import 'package:database_access_layer/Entities/cus_customer_request_detail.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerRequestDetailRepositoryGenerated {
  Future<CusCustomerRequestDetail> getInstance(int idAgent);
  Future<bool> save(CusCustomerRequestDetail agent);
  Future<List<CusCustomerRequestDetail>> retrieveAll();
}

class _CusCustomerRequestDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerRequestDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_REQUEST_DETAIL";
  static const String _primaryKey = "ID_CUSTOMER_REQUEST_DETAIL";

  _CusCustomerRequestDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerRequestDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerRequestDetail.fromMap(map);
  }

  Future<List<CusCustomerRequestDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerRequestDetail.fromMap(f)).toList();
  }

  Future<CusCustomerRequestDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerRequestDetail.fromMap(f)).first : CusCustomerRequestDetail();
  }

  Future<Iterable<CusCustomerRequestDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerRequestDetail.fromMap(f));
  }
Future<bool> save(CusCustomerRequestDetail model) async {
    bool result;
    if (model.idCustomerRequestDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerRequestDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerRequestDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusCustomerRequestDetailRepository extends _CusCustomerRequestDetailRepositoryGenerated {
  factory CusCustomerRequestDetailRepository() = _CusCustomerRequestDetailRepositoryImpl;
}

class _CusCustomerRequestDetailRepositoryImpl extends _CusCustomerRequestDetailRepositoryGeneratedImpl
    implements CusCustomerRequestDetailRepository {
  static _CusCustomerRequestDetailRepositoryImpl _this;
  factory _CusCustomerRequestDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerRequestDetailRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerRequestDetailRepositoryImpl._();
}
*/
