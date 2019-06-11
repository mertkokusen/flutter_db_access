import 'package:database_access_layer/Entities/acc_cash_order.gen.dart';
import 'base_provider.dart';

abstract class _AccCashOrderRepositoryGenerated {
  Future<AccCashOrder> getInstance(int idAgent);
  Future<bool> save(AccCashOrder agent);
  Future<List<AccCashOrder>> retrieveAll();
}

class _AccCashOrderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccCashOrderRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_CASH_ORDER";
  static const String _primaryKey = "ID_CASH_ORDER";

  _AccCashOrderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccCashOrder> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccCashOrder.fromMap(map);
  }

  Future<List<AccCashOrder>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccCashOrder.fromMap(f)).toList();
  }

  Future<AccCashOrder> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccCashOrder.fromMap(f)).first : AccCashOrder();
  }

  Future<Iterable<AccCashOrder>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccCashOrder.fromMap(f));
  }
Future<bool> save(AccCashOrder model) async {
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
abstract class AccCashOrderRepository extends _AccCashOrderRepositoryGenerated {
  factory AccCashOrderRepository() = _AccCashOrderRepositoryImpl;
}

class _AccCashOrderRepositoryImpl extends _AccCashOrderRepositoryGeneratedImpl
    implements AccCashOrderRepository {
  static _AccCashOrderRepositoryImpl _this;
  factory _AccCashOrderRepositoryImpl() {
    if (_this == null) {
      _this = new _AccCashOrderRepositoryImpl._();
    }
    return _this;
  }
  _AccCashOrderRepositoryImpl._();
}
*/
