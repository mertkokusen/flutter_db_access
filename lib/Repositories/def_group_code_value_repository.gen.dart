import 'package:database_access_layer/Entities/def_group_code_value.gen.dart';
import 'base_provider.dart';

abstract class _DefGroupCodeValueRepositoryGenerated {
  Future<DefGroupCodeValue> getInstance(int idAgent);
  Future<bool> save(DefGroupCodeValue agent);
  Future<List<DefGroupCodeValue>> retrieveAll();
}

class _DefGroupCodeValueRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _DefGroupCodeValueRepositoryGeneratedImpl _this;
  static const String _tableName = "DEF_GROUP_CODE_VALUE";
  static const String _primaryKey = "ID_GROUP_CODE_VALUE";

  _DefGroupCodeValueRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<DefGroupCodeValue> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return DefGroupCodeValue.fromMap(map);
  }

  Future<List<DefGroupCodeValue>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => DefGroupCodeValue.fromMap(f)).toList();
  }

  Future<DefGroupCodeValue> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => DefGroupCodeValue.fromMap(f)).first : DefGroupCodeValue();
  }

  Future<Iterable<DefGroupCodeValue>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => DefGroupCodeValue.fromMap(f));
  }
Future<bool> save(DefGroupCodeValue model) async {
    bool result;
    if (model.idGroupCodeValue == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idGroupCodeValue = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idGroupCodeValue.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class DefGroupCodeValueRepository extends _DefGroupCodeValueRepositoryGenerated {
  factory DefGroupCodeValueRepository() = _DefGroupCodeValueRepositoryImpl;
}

class _DefGroupCodeValueRepositoryImpl extends _DefGroupCodeValueRepositoryGeneratedImpl
    implements DefGroupCodeValueRepository {
  static _DefGroupCodeValueRepositoryImpl _this;
  factory _DefGroupCodeValueRepositoryImpl() {
    if (_this == null) {
      _this = new _DefGroupCodeValueRepositoryImpl._();
    }
    return _this;
  }
  _DefGroupCodeValueRepositoryImpl._();
}
*/
