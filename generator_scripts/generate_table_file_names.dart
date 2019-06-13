import 'dart:io';

main(List<String> arguments) async {
  String folderPath = 'sqlite_databases';
  String newFilePath = "lib";
  String newFileName = "table_names.dart";

  String tableNames = "";

  tableNames = await getFilesFromDiretory(folderPath);
  createFile(newFileName, newFilePath, tableNames);
}

Future<String> getFilesFromDiretory(String folderPath) async {
  StringBuffer buffer = StringBuffer();
  Directory directory = Directory(folderPath);
  Stream<FileSystemEntity> directoryList = directory.list(recursive: true);

  buffer.write('''List<String> sqlCreateStatements = [''');
  await for (FileSystemEntity f in directoryList) {
    if (f is File) {
      List<String> fileSplitName = f.path.split("\\");
      buffer.write('''\n  "${fileSplitName[0]}/${fileSplitName[1]}",''');
    }
  }
  buffer.write('''\n];''');
  return buffer.toString();
}

Future createFile(String newFileName, String newFilePath, String tableNames) async {
  Directory directory = await Directory(newFilePath).create(recursive: true);
  File file = File('${directory.path}/$newFileName');
  IOSink sink = file.openWrite();
  sink.write(tableNames);
  await sink.flush();
  await sink.close();
}

/* List<String> sqlCreateStatements = [
  "SQLITE_DATABASES/ACC_CASH_ORDER_DETAIL",
  "SQLITE_DATABASES/ACC_CASH_ORDER_DETAIL",
  "SQLITE_DATABASES/ACC_CASH_ORDER_DETAIL",
  "SQLITE_DATABASES/ACC_CASH_ORDER_DETAIL",
  "SQLITE_DATABASES/ACC_CASH_ORDER_DETAIL",
  "SQLITE_DATABASES/ACC_CASH_ORDER_DETAIL",
  "SQLITE_DATABASES/ACC_CASH_ORDER_DETAIL",
]; */
