
part of '../../repositories/cus/customer_request_detail_repository.dart';

abstract class _CustomerRequestDetailRepositoryGenerated {
  Future<CustomerRequestDetail> getInstance(int idAgent);
  Future<List<CustomerRequestDetail>> retrieveAll();

 Future<bool> save(CustomerRequestDetail agent);
}
class _CustomerRequestDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerRequestDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_REQUEST_DETAIL";
  static const String _primaryKey = "ID_CUSTOMER_REQUEST_DETAIL";

  _CustomerRequestDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerRequestDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerRequestDetail.fromMap(map);
  }

  Future<List<CustomerRequestDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerRequestDetail.fromMap(f)).toList();
  }

  Future<CustomerRequestDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerRequestDetail.fromMap(f)).first : CustomerRequestDetail();
  }

  Future<Iterable<CustomerRequestDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerRequestDetail.fromMap(f));
  }
Future<bool> save(CustomerRequestDetail model) async {
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
abstract class CustomerRequestDetailRepository extends _CustomerRequestDetailRepositoryGenerated {
  factory CustomerRequestDetailRepository() = _CustomerRequestDetailRepositoryImpl;
}

class _CustomerRequestDetailRepositoryImpl extends _CustomerRequestDetailRepositoryGeneratedImpl
    implements CustomerRequestDetailRepository {
  static _CustomerRequestDetailRepositoryImpl _this;
  factory _CustomerRequestDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerRequestDetailRepositoryImpl._();
    }
    return _this;
  }
  _CustomerRequestDetailRepositoryImpl._();
}
*/
