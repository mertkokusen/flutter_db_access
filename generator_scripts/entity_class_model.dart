import 'dart:io';

import 'package:recase/recase.dart';

class EntityClassModel {
  final String className;
  final String domainName;
  final Map<String, String> fieldNamesAndTypes;

  EntityClassModel({this.className, this.domainName, this.fieldNamesAndTypes});

  createClass() async {
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.write('''
class ${convertPascalCase(className)} {
  ''');

    // Class Fields Part
    fieldNamesAndTypes.forEach((name, type) {
      stringBuffer.write('''
${changeVariableType(type)} ${convertCamelCase(name)};
  ''');
    });
    stringBuffer.write("\n");

    // Constructor Part
    stringBuffer.write("  ${convertPascalCase(className)}({\n");
    fieldNamesAndTypes.forEach((name, type) {
      stringBuffer.write("    this." + convertCamelCase(name) + "," + "\n");
    });
    stringBuffer.write("  });");
    stringBuffer.write("\n");

    stringBuffer.write("\n");

    //FromJson Part
    stringBuffer.write('''  
  static ${convertPascalCase(className)} fromMap(Map<String, dynamic> json) {
    return ${convertPascalCase(className)}()
  ''');

    fieldNamesAndTypes.forEach((name, type) {
      if (type == "DATETIME") {
        stringBuffer.write('''  
    ..${convertCamelCase(name)} = json['${convertCamelCase(name)}'] == null ? null : DateTime.parse(json['${convertCamelCase(name)}'] as String)
  ''');
      } else if (type == "BOOLEAN") {
        stringBuffer.write('''  
    ..${convertCamelCase(name)} = json['${convertCamelCase(name)}'] == 1 ? true : false
  ''');
      } else {
        stringBuffer.write('''  
    ..${convertCamelCase(name)} = json['${convertCamelCase(name)}'] as ${changeVariableType(type)}
  ''');
      }
    });

    stringBuffer.write('''  
;}
  ''');

    stringBuffer.write("\n");

    //ToJson Part
    stringBuffer.write("  Map<String, dynamic> toMap() => <String, dynamic>{");
    stringBuffer.write("\n");
    fieldNamesAndTypes.forEach((name, type) {
      if (type == "DATETIME") {
        stringBuffer.write("        '${convertCamelCase(name)}': ${convertCamelCase(name)}?.toIso8601String(),\n");
      } else {
        stringBuffer.write("        '${convertCamelCase(name)}': ${convertCamelCase(name)},\n");
      }
    });
    stringBuffer.write("      }");
    stringBuffer.write(";");

    stringBuffer.write("\n");
    stringBuffer.write("}");

    await createNewFile(className, domainName, stringBuffer);
    stringBuffer.clear();
  }

  Future createNewFile(String className, String domainName, StringBuffer stringBuffer) async {
    Directory myDir = await new Directory('lib/entities/$domainName').create();
    File newFile = File('${myDir.path}/${convertSnakeCase(className)}.gen.dart');
    IOSink sink = newFile.openWrite();
    sink.write(stringBuffer);
    await sink.flush();
    await sink.close();
  }

  String changeVariableType(String type) {
    switch (type) {
      case "INT":
      case "NUMERIC":
      case "SMALLINT":
      case "NUMBER":
      case "BIGINT":
      case "INT64":
      case "INTEGER":
      case "DECIMAL":
        return "int";
        break;

      case "DATETIME":
      case "DATE":
        return "DateTime";
        break;

      case "NVARCHAR":
      case "CHAR":
      case "VARCHAR":
        return "String";
        break;

      case "BOOLEAN":
        return "bool";
        break;

      default:
        return null;
    }
  }

  //camelCase
  String convertCamelCase(String word) {
    return ReCase(word).camelCase;
  }

  //PascalCase
  String convertPascalCase(String word) {
    return ReCase(word).pascalCase;
  }

  // lowercase
  String convertLowerCase(String word) {
    return word.toLowerCase();
  }

  // snake_case
  String convertSnakeCase(String word) {
    return ReCase(word).snakeCase;
  }
}
