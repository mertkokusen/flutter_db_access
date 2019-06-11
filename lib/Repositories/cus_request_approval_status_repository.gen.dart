import 'package:database_access_layer/Entities/cus_request_approval_status.gen.dart';
import 'base_provider.dart';

abstract class _CusRequestApprovalStatusRepositoryGenerated {
  Future<CusRequestApprovalStatus> getInstance(int idAgent);
  Future<bool> save(CusRequestApprovalStatus agent);
  Future<List<CusRequestApprovalStatus>> retrieveAll();
}

class _CusRequestApprovalStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusRequestApprovalStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_REQUEST_APPROVAL_STATUS";
  static const String _primaryKey = "ID_REQUEST_APPROVAL_STATUS";

  _CusRequestApprovalStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusRequestApprovalStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusRequestApprovalStatus.fromMap(map);
  }

  Future<List<CusRequestApprovalStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusRequestApprovalStatus.fromMap(f)).toList();
  }

  Future<CusRequestApprovalStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusRequestApprovalStatus.fromMap(f)).first : CusRequestApprovalStatus();
  }

  Future<Iterable<CusRequestApprovalStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusRequestApprovalStatus.fromMap(f));
  }
Future<bool> save(CusRequestApprovalStatus model) async {
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
abstract class CusRequestApprovalStatusRepository extends _CusRequestApprovalStatusRepositoryGenerated {
  factory CusRequestApprovalStatusRepository() = _CusRequestApprovalStatusRepositoryImpl;
}

class _CusRequestApprovalStatusRepositoryImpl extends _CusRequestApprovalStatusRepositoryGeneratedImpl
    implements CusRequestApprovalStatusRepository {
  static _CusRequestApprovalStatusRepositoryImpl _this;
  factory _CusRequestApprovalStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _CusRequestApprovalStatusRepositoryImpl._();
    }
    return _this;
  }
  _CusRequestApprovalStatusRepositoryImpl._();
}
*/
