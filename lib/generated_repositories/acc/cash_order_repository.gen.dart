
part of '../../repositories/acc/cash_order_repository.dart';

abstract class _CashOrderRepositoryGenerated {
  Future<CashOrder> getInstance(int idAgent);
  Future<List<CashOrder>> retrieveAll();

 Future<bool> save(CashOrder agent);
}
class _CashOrderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CashOrderRepositoryGeneratedImpl _this;
  static const String _tableName = "CASH_ORDER";
  static const String _primaryKey = "ID_CASH_ORDER";

  _CashOrderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CashOrder> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CashOrder.fromMap(map);
  }

  Future<List<CashOrder>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CashOrder.fromMap(f)).toList();
  }

  Future<CashOrder> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CashOrder.fromMap(f)).first : CashOrder();
  }

  Future<Iterable<CashOrder>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CashOrder.fromMap(f));
  }
Future<bool> save(CashOrder model) async {
    bool result;
    if (model.idCashOrder == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCashOrder = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCashOrder.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CashOrderRepository extends _CashOrderRepositoryGenerated {
  factory CashOrderRepository() = _CashOrderRepositoryImpl;
}

class _CashOrderRepositoryImpl extends _CashOrderRepositoryGeneratedImpl
    implements CashOrderRepository {
  static _CashOrderRepositoryImpl _this;
  factory _CashOrderRepositoryImpl() {
    if (_this == null) {
      _this = new _CashOrderRepositoryImpl._();
    }
    return _this;
  }
  _CashOrderRepositoryImpl._();
}
*/
