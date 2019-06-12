
part of '../../repositories/cus/request_attribute_repository.dart';

abstract class _RequestAttributeRepositoryGenerated {
  Future<RequestAttribute> getInstance(int idAgent);
  Future<List<RequestAttribute>> retrieveAll();

 Future<bool> save(RequestAttribute agent);
}
class _RequestAttributeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RequestAttributeRepositoryGeneratedImpl _this;
  static const String _tableName = "REQUEST_ATTRIBUTE";
  static const String _primaryKey = "ID_REQUEST_ATTRIBUTE";

  _RequestAttributeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RequestAttribute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RequestAttribute.fromMap(map);
  }

  Future<List<RequestAttribute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RequestAttribute.fromMap(f)).toList();
  }

  Future<RequestAttribute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RequestAttribute.fromMap(f)).first : RequestAttribute();
  }

  Future<Iterable<RequestAttribute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RequestAttribute.fromMap(f));
  }
Future<bool> save(RequestAttribute model) async {
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
abstract class RequestAttributeRepository extends _RequestAttributeRepositoryGenerated {
  factory RequestAttributeRepository() = _RequestAttributeRepositoryImpl;
}

class _RequestAttributeRepositoryImpl extends _RequestAttributeRepositoryGeneratedImpl
    implements RequestAttributeRepository {
  static _RequestAttributeRepositoryImpl _this;
  factory _RequestAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestAttributeRepositoryImpl._();
    }
    return _this;
  }
  _RequestAttributeRepositoryImpl._();
}
*/
