import 'package:database_access_layer/Entities/ord_group_code_value.gen.dart';
import 'base_provider.dart';

abstract class _OrdGroupCodeValueRepositoryGenerated {
  Future<OrdGroupCodeValue> getInstance(int idAgent);
  Future<bool> save(OrdGroupCodeValue agent);
  Future<List<OrdGroupCodeValue>> retrieveAll();
}

class _OrdGroupCodeValueRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdGroupCodeValueRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_GROUP_CODE_VALUE";
  static const String _primaryKey = "ID_GROUP_CODE_VALUE";

  _OrdGroupCodeValueRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdGroupCodeValue> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdGroupCodeValue.fromMap(map);
  }

  Future<List<OrdGroupCodeValue>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdGroupCodeValue.fromMap(f)).toList();
  }

  Future<OrdGroupCodeValue> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdGroupCodeValue.fromMap(f)).first : OrdGroupCodeValue();
  }

  Future<Iterable<OrdGroupCodeValue>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdGroupCodeValue.fromMap(f));
  }
Future<bool> save(OrdGroupCodeValue model) async {
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
abstract class OrdGroupCodeValueRepository extends _OrdGroupCodeValueRepositoryGenerated {
  factory OrdGroupCodeValueRepository() = _OrdGroupCodeValueRepositoryImpl;
}

class _OrdGroupCodeValueRepositoryImpl extends _OrdGroupCodeValueRepositoryGeneratedImpl
    implements OrdGroupCodeValueRepository {
  static _OrdGroupCodeValueRepositoryImpl _this;
  factory _OrdGroupCodeValueRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdGroupCodeValueRepositoryImpl._();
    }
    return _this;
  }
  _OrdGroupCodeValueRepositoryImpl._();
}
*/
