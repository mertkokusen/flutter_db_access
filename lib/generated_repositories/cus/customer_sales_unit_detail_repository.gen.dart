
part of '../../repositories/cus/customer_sales_unit_detail_repository.dart';

abstract class _CustomerSalesUnitDetailRepositoryGenerated {
  Future<CustomerSalesUnitDetail> getInstance(int idAgent);
  Future<List<CustomerSalesUnitDetail>> retrieveAll();

 Future<bool> save(CustomerSalesUnitDetail agent);
}
class _CustomerSalesUnitDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerSalesUnitDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_SALES_UNIT_DETAIL";
  static const String _primaryKey = "ID_CUSTOMER_SALES_UNIT_DETAIL";

  _CustomerSalesUnitDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerSalesUnitDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerSalesUnitDetail.fromMap(map);
  }

  Future<List<CustomerSalesUnitDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerSalesUnitDetail.fromMap(f)).toList();
  }

  Future<CustomerSalesUnitDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerSalesUnitDetail.fromMap(f)).first : CustomerSalesUnitDetail();
  }

  Future<Iterable<CustomerSalesUnitDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerSalesUnitDetail.fromMap(f));
  }
Future<bool> save(CustomerSalesUnitDetail model) async {
    bool result;
    if (model.idCustomerSalesUnitDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerSalesUnitDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerSalesUnitDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerSalesUnitDetailRepository extends _CustomerSalesUnitDetailRepositoryGenerated {
  factory CustomerSalesUnitDetailRepository() = _CustomerSalesUnitDetailRepositoryImpl;
}

class _CustomerSalesUnitDetailRepositoryImpl extends _CustomerSalesUnitDetailRepositoryGeneratedImpl
    implements CustomerSalesUnitDetailRepository {
  static _CustomerSalesUnitDetailRepositoryImpl _this;
  factory _CustomerSalesUnitDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerSalesUnitDetailRepositoryImpl._();
    }
    return _this;
  }
  _CustomerSalesUnitDetailRepositoryImpl._();
}
*/
