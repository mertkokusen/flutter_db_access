
part of '../../repositories/cus/customer_list_detail_repository.dart';

abstract class _CustomerListDetailRepositoryGenerated {
  Future<CustomerListDetail> getInstance(int idAgent);
  Future<List<CustomerListDetail>> retrieveAll();

 Future<bool> save(CustomerListDetail agent);
}
class _CustomerListDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerListDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_LIST_DETAIL";
  static const String _primaryKey = "ID_CUSTOMER_LIST_DETAIL";

  _CustomerListDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerListDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerListDetail.fromMap(map);
  }

  Future<List<CustomerListDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerListDetail.fromMap(f)).toList();
  }

  Future<CustomerListDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerListDetail.fromMap(f)).first : CustomerListDetail();
  }

  Future<Iterable<CustomerListDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerListDetail.fromMap(f));
  }
Future<bool> save(CustomerListDetail model) async {
    bool result;
    if (model.idCustomerListDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerListDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerListDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerListDetailRepository extends _CustomerListDetailRepositoryGenerated {
  factory CustomerListDetailRepository() = _CustomerListDetailRepositoryImpl;
}

class _CustomerListDetailRepositoryImpl extends _CustomerListDetailRepositoryGeneratedImpl
    implements CustomerListDetailRepository {
  static _CustomerListDetailRepositoryImpl _this;
  factory _CustomerListDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerListDetailRepositoryImpl._();
    }
    return _this;
  }
  _CustomerListDetailRepositoryImpl._();
}
*/
