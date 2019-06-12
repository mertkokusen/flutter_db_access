
part of '../../repositories/mem/request_header_repository.dart';

abstract class _RequestHeaderRepositoryGenerated {
  Future<RequestHeader> getInstance(int idAgent);
  Future<List<RequestHeader>> retrieveAll();

 Future<bool> save(RequestHeader agent);
}
class _RequestHeaderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RequestHeaderRepositoryGeneratedImpl _this;
  static const String _tableName = "REQUEST_HEADER";
  static const String _primaryKey = "ID_REQUEST_HEADER";

  _RequestHeaderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RequestHeader> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RequestHeader.fromMap(map);
  }

  Future<List<RequestHeader>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RequestHeader.fromMap(f)).toList();
  }

  Future<RequestHeader> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RequestHeader.fromMap(f)).first : RequestHeader();
  }

  Future<Iterable<RequestHeader>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RequestHeader.fromMap(f));
  }
Future<bool> save(RequestHeader model) async {
    bool result;
    if (model.idRequestHeader == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRequestHeader = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRequestHeader.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class RequestHeaderRepository extends _RequestHeaderRepositoryGenerated {
  factory RequestHeaderRepository() = _RequestHeaderRepositoryImpl;
}

class _RequestHeaderRepositoryImpl extends _RequestHeaderRepositoryGeneratedImpl
    implements RequestHeaderRepository {
  static _RequestHeaderRepositoryImpl _this;
  factory _RequestHeaderRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestHeaderRepositoryImpl._();
    }
    return _this;
  }
  _RequestHeaderRepositoryImpl._();
}
*/
