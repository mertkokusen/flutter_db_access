
part of '../../repositories/cus/request_approval_status_repository.dart';

abstract class _RequestApprovalStatusRepositoryGenerated {
  Future<RequestApprovalStatus> getInstance(int idAgent);
  Future<List<RequestApprovalStatus>> retrieveAll();

 Future<bool> save(RequestApprovalStatus agent);
}
class _RequestApprovalStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RequestApprovalStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "REQUEST_APPROVAL_STATUS";
  static const String _primaryKey = "ID_REQUEST_APPROVAL_STATUS";

  _RequestApprovalStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RequestApprovalStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RequestApprovalStatus.fromMap(map);
  }

  Future<List<RequestApprovalStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RequestApprovalStatus.fromMap(f)).toList();
  }

  Future<RequestApprovalStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RequestApprovalStatus.fromMap(f)).first : RequestApprovalStatus();
  }

  Future<Iterable<RequestApprovalStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RequestApprovalStatus.fromMap(f));
  }
Future<bool> save(RequestApprovalStatus model) async {
    bool result;
    if (model.idRequestApprovalStatus == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRequestApprovalStatus = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRequestApprovalStatus.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class RequestApprovalStatusRepository extends _RequestApprovalStatusRepositoryGenerated {
  factory RequestApprovalStatusRepository() = _RequestApprovalStatusRepositoryImpl;
}

class _RequestApprovalStatusRepositoryImpl extends _RequestApprovalStatusRepositoryGeneratedImpl
    implements RequestApprovalStatusRepository {
  static _RequestApprovalStatusRepositoryImpl _this;
  factory _RequestApprovalStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestApprovalStatusRepositoryImpl._();
    }
    return _this;
  }
  _RequestApprovalStatusRepositoryImpl._();
}
*/
