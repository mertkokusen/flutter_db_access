import 'package:database_access_layer/Entities/cus_customer_request.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerRequestRepositoryGenerated {
  Future<CusCustomerRequest> getInstance(int idAgent);
  Future<bool> save(CusCustomerRequest agent);
  Future<List<CusCustomerRequest>> retrieveAll();
}

class _CusCustomerRequestRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerRequestRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_REQUEST";
  static const String _primaryKey = "ID_CUSTOMER_REQUEST";

  _CusCustomerRequestRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerRequest> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerRequest.fromMap(map);
  }

  Future<List<CusCustomerRequest>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerRequest.fromMap(f)).toList();
  }

  Future<CusCustomerRequest> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerRequest.fromMap(f)).first : CusCustomerRequest();
  }

  Future<Iterable<CusCustomerRequest>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerRequest.fromMap(f));
  }
Future<bool> save(CusCustomerRequest model) async {
    bool result;
    if (model.idCustomerRequest == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerRequest = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerRequest.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusCustomerRequestRepository extends _CusCustomerRequestRepositoryGenerated {
  factory CusCustomerRequestRepository() = _CusCustomerRequestRepositoryImpl;
}

class _CusCustomerRequestRepositoryImpl extends _CusCustomerRequestRepositoryGeneratedImpl
    implements CusCustomerRequestRepository {
  static _CusCustomerRequestRepositoryImpl _this;
  factory _CusCustomerRequestRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerRequestRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerRequestRepositoryImpl._();
}
*/
