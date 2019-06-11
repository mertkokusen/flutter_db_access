import 'package:database_access_layer/Entities/cus_request_attribute.gen.dart';
import 'base_provider.dart';

abstract class _CusRequestAttributeRepositoryGenerated {
  Future<CusRequestAttribute> getInstance(int idAgent);
  Future<bool> save(CusRequestAttribute agent);
  Future<List<CusRequestAttribute>> retrieveAll();
}

class _CusRequestAttributeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusRequestAttributeRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_REQUEST_ATTRIBUTE";
  static const String _primaryKey = "ID_REQUEST_ATTRIBUTE";

  _CusRequestAttributeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusRequestAttribute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusRequestAttribute.fromMap(map);
  }

  Future<List<CusRequestAttribute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusRequestAttribute.fromMap(f)).toList();
  }

  Future<CusRequestAttribute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusRequestAttribute.fromMap(f)).first : CusRequestAttribute();
  }

  Future<Iterable<CusRequestAttribute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusRequestAttribute.fromMap(f));
  }
Future<bool> save(CusRequestAttribute model) async {
    bool result;
    if (model.idRequestAttribute == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRequestAttribute = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRequestAttribute.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusRequestAttributeRepository extends _CusRequestAttributeRepositoryGenerated {
  factory CusRequestAttributeRepository() = _CusRequestAttributeRepositoryImpl;
}

class _CusRequestAttributeRepositoryImpl extends _CusRequestAttributeRepositoryGeneratedImpl
    implements CusRequestAttributeRepository {
  static _CusRequestAttributeRepositoryImpl _this;
  factory _CusRequestAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _CusRequestAttributeRepositoryImpl._();
    }
    return _this;
  }
  _CusRequestAttributeRepositoryImpl._();
}
*/
