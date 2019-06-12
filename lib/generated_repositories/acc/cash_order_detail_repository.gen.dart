
part of '../../repositories/acc/cash_order_detail_repository.dart';

abstract class _CashOrderDetailRepositoryGenerated {
  Future<CashOrderDetail> getInstance(int idAgent);
  Future<List<CashOrderDetail>> retrieveAll();

 Future<bool> save(CashOrderDetail agent);
}
class _CashOrderDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CashOrderDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CASH_ORDER_DETAIL";
  static const String _primaryKey = "ID_CASH_ORDER_DETAIL";

  _CashOrderDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CashOrderDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CashOrderDetail.fromMap(map);
  }

  Future<List<CashOrderDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CashOrderDetail.fromMap(f)).toList();
  }

  Future<CashOrderDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CashOrderDetail.fromMap(f)).first : CashOrderDetail();
  }

  Future<Iterable<CashOrderDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CashOrderDetail.fromMap(f));
  }
Future<bool> save(CashOrderDetail model) async {
    bool result;
    if (model.idCashOrderDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCashOrderDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCashOrderDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CashOrderDetailRepository extends _CashOrderDetailRepositoryGenerated {
  factory CashOrderDetailRepository() = _CashOrderDetailRepositoryImpl;
}

class _CashOrderDetailRepositoryImpl extends _CashOrderDetailRepositoryGeneratedImpl
    implements CashOrderDetailRepository {
  static _CashOrderDetailRepositoryImpl _this;
  factory _CashOrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CashOrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _CashOrderDetailRepositoryImpl._();
}
*/
