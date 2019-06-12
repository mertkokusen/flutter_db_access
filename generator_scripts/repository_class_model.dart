import 'dart:io';

import 'package:recase/recase.dart';

class RepositoryClassModel {
  final String className;
  String domainName;
  String primaryKeyName;
  final Map<String, String> fieldNamesAndTypes;

  RepositoryClassModel({this.className, this.domainName, this.primaryKeyName, this.fieldNamesAndTypes});

  createClass() async {
    StringBuffer stringBuffer = StringBuffer();

    stringBuffer.write('''
import 'package:database_access_layer/generated_entity/$domainName/${className.toLowerCase()}.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/$domainName/${className.toLowerCase()}_repository.gen.dart';

abstract class ${convertPascalCase(className)}Repository extends _${convertPascalCase(className)}RepositoryGenerated {
  factory ${convertPascalCase(className)}Repository() = _${convertPascalCase(className)}RepositoryImpl;
}

class _${convertPascalCase(className)}RepositoryImpl extends _${convertPascalCase(className)}RepositoryGeneratedImpl
    implements ${convertPascalCase(className)}Repository {
  static _${convertPascalCase(className)}RepositoryImpl _this;
  factory _${convertPascalCase(className)}RepositoryImpl() {
    if (_this == null) {
      _this = new _${convertPascalCase(className)}RepositoryImpl._();
    }
    return _this;
  }
  _${convertPascalCase(className)}RepositoryImpl._();
}

''');

    await createNewFile(className, domainName, stringBuffer);
    stringBuffer.clear();
  }

  createGenClass() async {
    StringBuffer stringBuffer = StringBuffer();

    stringBuffer.write('''

part of '../../repositories/$domainName/${className.toLowerCase()}_repository.dart';

abstract class _${convertPascalCase(className)}RepositoryGenerated {
  Future<${convertPascalCase(className)}> getInstance(int idAgent);
  Future<List<${convertPascalCase(className)}>> retrieveAll();

''');

    if (primaryKeyName.isNotEmpty) {
      stringBuffer.write('''
 Future<bool> save(${convertPascalCase(className)} agent);
''');
    }
    stringBuffer.write("}");

    stringBuffer.write("\n");

    stringBuffer.write('''
class _${convertPascalCase(className)}RepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _${convertPascalCase(className)}RepositoryGeneratedImpl _this;
  static const String _tableName = "$className";
  static const String _primaryKey = "$primaryKeyName";

  _${convertPascalCase(className)}RepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<${convertPascalCase(className)}> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ${convertPascalCase(className)}.fromMap(map);
  }

  Future<List<${convertPascalCase(className)}>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ${convertPascalCase(className)}.fromMap(f)).toList();
  }

  Future<${convertPascalCase(className)}> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ${convertPascalCase(className)}.fromMap(f)).first : ${convertPascalCase(className)}();
  }

  Future<Iterable<${convertPascalCase(className)}>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ${convertPascalCase(className)}.fromMap(f));
  }
''');

    if (primaryKeyName.isNotEmpty) {
      stringBuffer.write('''
Future<bool> save(${convertPascalCase(className)} model) async {
    bool result;
    if (model.${convertCamelCase(primaryKeyName)} == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.${convertCamelCase(primaryKeyName)} = id;
        result = true;
      }
    } else {
      result = await updateItem(model.${convertCamelCase(primaryKeyName)}.toString(), model.toMap());
    }
    return result;
  }

''');
    }
    stringBuffer.write("}");

    stringBuffer.write("\n");

    stringBuffer.write('''
/*
abstract class ${convertPascalCase(className)}Repository extends _${convertPascalCase(className)}RepositoryGenerated {
  factory ${convertPascalCase(className)}Repository() = _${convertPascalCase(className)}RepositoryImpl;
}

class _${convertPascalCase(className)}RepositoryImpl extends _${convertPascalCase(className)}RepositoryGeneratedImpl
    implements ${convertPascalCase(className)}Repository {
  static _${convertPascalCase(className)}RepositoryImpl _this;
  factory _${convertPascalCase(className)}RepositoryImpl() {
    if (_this == null) {
      _this = new _${convertPascalCase(className)}RepositoryImpl._();
    }
    return _this;
  }
  _${convertPascalCase(className)}RepositoryImpl._();
}
*/
''');

    await createNewGenFile(className, domainName, stringBuffer);
    stringBuffer.clear();
  }

  Future createNewFile(String className, String domainName, StringBuffer stringBuffer) async {
    Directory myDir = await new Directory('lib/repositories/$domainName').create();
    File newFile = File('${myDir.path}/${convertSnakeCase(className)}_repository.dart');
    IOSink sink = newFile.openWrite();
    sink.write(stringBuffer);
    await sink.flush();
    await sink.close();
  }

  Future createNewGenFile(String className, String domainName, StringBuffer stringBuffer) async {
    Directory myDir = await new Directory('lib/generated_repositories/$domainName').create();
    File newFile = File('${myDir.path}/${convertSnakeCase(className)}_repository.gen.dart');
    IOSink sink = newFile.openWrite();
    sink.write(stringBuffer);
    await sink.flush();
    await sink.close();
  }

  String changeVariableType(String type) {
    if (type == "INT" || type.contains('NUMERIC') || type == "SMALLINT") {
      return "int";
    } else if (type == "DATETIME") {
      return "DateTime";
    } else if (type == "BOOLEAN") {
      return "bool";
    } else if (type.contains("NVARCHAR") || type.contains("CHAR")) {
      return "String";
    }
    return null;
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
