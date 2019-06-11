import 'package:database_access_layer/Entities/app_parameter.gen.dart';
import 'base_provider.dart';

abstract class _AppParameterRepositoryGenerated {
  Future<AppParameter> getInstance(int idAgent);
  Future<bool> save(AppParameter agent);
  Future<List<AppParameter>> retrieveAll();
}

class _AppParameterRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AppParameterRepositoryGeneratedImpl _this;
  static const String _tableName = "APP_PARAMETER";
  static const String _primaryKey = "ID_PARAMETER";

  _AppParameterRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AppParameter> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AppParameter.fromMap(map);
  }

  Future<List<AppParameter>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AppParameter.fromMap(f)).toList();
  }

  Future<AppParameter> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AppParameter.fromMap(f)).first : AppParameter();
  }

  Future<Iterable<AppParameter>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AppParameter.fromMap(f));
  }
Future<bool> save(AppParameter model) async {
    bool result;
    if (model.idParameter == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idParameter = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idParameter.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class AppParameterRepository extends _AppParameterRepositoryGenerated {
  factory AppParameterRepository() = _AppParameterRepositoryImpl;
}

class _AppParameterRepositoryImpl extends _AppParameterRepositoryGeneratedImpl
    implements AppParameterRepository {
  static _AppParameterRepositoryImpl _this;
  factory _AppParameterRepositoryImpl() {
    if (_this == null) {
      _this = new _AppParameterRepositoryImpl._();
    }
    return _this;
  }
  _AppParameterRepositoryImpl._();
}
*/
