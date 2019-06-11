import 'package:database_access_layer/Entities/cus_no_sales_reason.gen.dart';
import 'base_provider.dart';

abstract class _CusNoSalesReasonRepositoryGenerated {
  Future<CusNoSalesReason> getInstance(int idAgent);
  Future<bool> save(CusNoSalesReason agent);
  Future<List<CusNoSalesReason>> retrieveAll();
}

class _CusNoSalesReasonRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusNoSalesReasonRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_NO_SALES_REASON";
  static const String _primaryKey = "ID_NO_SALES_REASON";

  _CusNoSalesReasonRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusNoSalesReason> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusNoSalesReason.fromMap(map);
  }

  Future<List<CusNoSalesReason>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusNoSalesReason.fromMap(f)).toList();
  }

  Future<CusNoSalesReason> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusNoSalesReason.fromMap(f)).first : CusNoSalesReason();
  }

  Future<Iterable<CusNoSalesReason>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusNoSalesReason.fromMap(f));
  }
Future<bool> save(CusNoSalesReason model) async {
    bool result;
    if (model.idNoSalesReason == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idNoSalesReason = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idNoSalesReason.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusNoSalesReasonRepository extends _CusNoSalesReasonRepositoryGenerated {
  factory CusNoSalesReasonRepository() = _CusNoSalesReasonRepositoryImpl;
}

class _CusNoSalesReasonRepositoryImpl extends _CusNoSalesReasonRepositoryGeneratedImpl
    implements CusNoSalesReasonRepository {
  static _CusNoSalesReasonRepositoryImpl _this;
  factory _CusNoSalesReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _CusNoSalesReasonRepositoryImpl._();
    }
    return _this;
  }
  _CusNoSalesReasonRepositoryImpl._();
}
*/
