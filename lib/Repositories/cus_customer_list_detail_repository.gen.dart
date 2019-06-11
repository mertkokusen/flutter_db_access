import 'package:database_access_layer/Entities/cus_customer_list_detail.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerListDetailRepositoryGenerated {
  Future<CusCustomerListDetail> getInstance(int idAgent);
  Future<bool> save(CusCustomerListDetail agent);
  Future<List<CusCustomerListDetail>> retrieveAll();
}

class _CusCustomerListDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerListDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_LIST_DETAIL";
  static const String _primaryKey = "ID_CUSTOMER_LIST_DETAIL";

  _CusCustomerListDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerListDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerListDetail.fromMap(map);
  }

  Future<List<CusCustomerListDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerListDetail.fromMap(f)).toList();
  }

  Future<CusCustomerListDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerListDetail.fromMap(f)).first : CusCustomerListDetail();
  }

  Future<Iterable<CusCustomerListDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerListDetail.fromMap(f));
  }
Future<bool> save(CusCustomerListDetail model) async {
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
abstract class CusCustomerListDetailRepository extends _CusCustomerListDetailRepositoryGenerated {
  factory CusCustomerListDetailRepository() = _CusCustomerListDetailRepositoryImpl;
}

class _CusCustomerListDetailRepositoryImpl extends _CusCustomerListDetailRepositoryGeneratedImpl
    implements CusCustomerListDetailRepository {
  static _CusCustomerListDetailRepositoryImpl _this;
  factory _CusCustomerListDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerListDetailRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerListDetailRepositoryImpl._();
}
*/
