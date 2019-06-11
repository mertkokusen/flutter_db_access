import 'package:database_access_layer/Entities/cus_customer_sales_unit_detail.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerSalesUnitDetailRepositoryGenerated {
  Future<CusCustomerSalesUnitDetail> getInstance(int idAgent);
  Future<bool> save(CusCustomerSalesUnitDetail agent);
  Future<List<CusCustomerSalesUnitDetail>> retrieveAll();
}

class _CusCustomerSalesUnitDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerSalesUnitDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_SALES_UNIT_DETAIL";
  static const String _primaryKey = "ID_CUSTOMER_SALES_UNIT_DETAIL";

  _CusCustomerSalesUnitDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerSalesUnitDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerSalesUnitDetail.fromMap(map);
  }

  Future<List<CusCustomerSalesUnitDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerSalesUnitDetail.fromMap(f)).toList();
  }

  Future<CusCustomerSalesUnitDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerSalesUnitDetail.fromMap(f)).first : CusCustomerSalesUnitDetail();
  }

  Future<Iterable<CusCustomerSalesUnitDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerSalesUnitDetail.fromMap(f));
  }
Future<bool> save(CusCustomerSalesUnitDetail model) async {
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
abstract class CusCustomerSalesUnitDetailRepository extends _CusCustomerSalesUnitDetailRepositoryGenerated {
  factory CusCustomerSalesUnitDetailRepository() = _CusCustomerSalesUnitDetailRepositoryImpl;
}

class _CusCustomerSalesUnitDetailRepositoryImpl extends _CusCustomerSalesUnitDetailRepositoryGeneratedImpl
    implements CusCustomerSalesUnitDetailRepository {
  static _CusCustomerSalesUnitDetailRepositoryImpl _this;
  factory _CusCustomerSalesUnitDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerSalesUnitDetailRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerSalesUnitDetailRepositoryImpl._();
}
*/
