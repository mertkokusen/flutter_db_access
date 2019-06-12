
part of '../../repositories/app/parameter_repository.dart';

abstract class _ParameterRepositoryGenerated {
  Future<Parameter> getInstance(int idAgent);
  Future<List<Parameter>> retrieveAll();

 Future<bool> save(Parameter agent);
}
class _ParameterRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ParameterRepositoryGeneratedImpl _this;
  static const String _tableName = "PARAMETER";
  static const String _primaryKey = "ID_PARAMETER";

  _ParameterRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Parameter> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Parameter.fromMap(map);
  }

  Future<List<Parameter>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Parameter.fromMap(f)).toList();
  }

  Future<Parameter> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Parameter.fromMap(f)).first : Parameter();
  }

  Future<Iterable<Parameter>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Parameter.fromMap(f));
  }
Future<bool> save(Parameter model) async {
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
abstract class ParameterRepository extends _ParameterRepositoryGenerated {
  factory ParameterRepository() = _ParameterRepositoryImpl;
}

class _ParameterRepositoryImpl extends _ParameterRepositoryGeneratedImpl
    implements ParameterRepository {
  static _ParameterRepositoryImpl _this;
  factory _ParameterRepositoryImpl() {
    if (_this == null) {
      _this = new _ParameterRepositoryImpl._();
    }
    return _this;
  }
  _ParameterRepositoryImpl._();
}
*/
