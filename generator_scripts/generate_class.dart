import 'dart:io';

import 'entity_class_model.dart';
import 'repository_class_model.dart';

main(List<String> arguments) async {
  String directoryPath = 'sqlite_databases';
  Directory directory = Directory(directoryPath);
  try {
    var directoryList = directory.list(recursive: false);
    await for (FileSystemEntity f in directoryList) {
      if (f is File) {
        await parseText(f.path);
      }
    }
  } catch (e) {
    print("Error !!! $e");
  }
}

parseText(String path) async {
  String text = await File(path).readAsString();

  int lastIndexOfCreateTable = text.indexOf("CREATE TABLE") + ("CREATE TABLE").length;
  int indexOfOpeningParenthes = text.indexOf("(", lastIndexOfCreateTable);
  int indexOfClosingParenthes = text.lastIndexOf(")");

  if (text.contains("CREATE TRIGGER")) {
    indexOfClosingParenthes = text.lastIndexOf(")", text.indexOf("CREATE TRIGGER"));
  }

  String tableName = text.substring(lastIndexOfCreateTable, indexOfOpeningParenthes).trim();
  tableName = tableName.substring(tableName.indexOf("_") + 1);
  String tableFields = text.substring(indexOfOpeningParenthes + 1, indexOfClosingParenthes);
  String domainName = text.substring(lastIndexOfCreateTable, indexOfOpeningParenthes).trim().split("_")[0].toLowerCase();
  String primaryKeyName = "";

  // Remove ( ,CONSTRAINT UQ_SURVEY_CUSTOMER_VISIT UNIQUE (ID_SURVEY,ID_CUSTOMER,ID_VISIT, ID_TSM_ACTIVITY) )
  tableFields = tableFields.replaceAll(RegExp(r",\s*CONSTRAINT\s*[a-zA-Z_\s(),]*"), "");
  // Remove CHAR(50) or NUMERIC(15, 6)
  tableFields = tableFields.replaceAll(RegExp(r"\(\s*([0-9]*)\s*,?\s*[0-9]*\s*\)"), "");
  // Remove spaces ( ID_CASH_ORDER        INT PRIMARY KEY) to (ID_CASH_ORDER INT PRIMARY KEY)
  tableFields = tableFields.replaceAll(RegExp(r"\s+"), " ");

  List<String> tableFieldsList = tableFields.split(",").map((f) => f.trim()).toList();

  Map<String, String> fieldNamesAndTypes = {};

  for (String s in tableFieldsList) {
    List<String> list = s.split(" ");
    if (list[0] == "CONSTRAINT") continue;
    fieldNamesAndTypes.addAll({list[0]: list[1]});

    if (list.contains("PRIMARY")) {
      primaryKeyName = list[0];
    }
  }
  print("$tableName\n");

  RepositoryClassModel repositoryClassModel = RepositoryClassModel(
    className: tableName,
    domainName: domainName,
    primaryKeyName: primaryKeyName,
    fieldNamesAndTypes: fieldNamesAndTypes,
  );

  repositoryClassModel.createClass();
  repositoryClassModel.createGenClass();

  EntityClassModel entityClassModel = EntityClassModel(
    className: tableName,
    domainName: domainName,
    fieldNamesAndTypes: fieldNamesAndTypes,
  );
  entityClassModel.createClass();
  entityClassModel.createClassGen();
}
