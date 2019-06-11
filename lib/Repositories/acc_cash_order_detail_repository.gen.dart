import 'package:database_access_layer/Entities/acc_cash_order_detail.gen.dart';
import 'base_provider.dart';

abstract class _AccCashOrderDetailRepositoryGenerated {
  Future<AccCashOrderDetail> getInstance(int idAgent);
  Future<bool> save(AccCashOrderDetail agent);
  Future<List<AccCashOrderDetail>> retrieveAll();
}

class _AccCashOrderDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccCashOrderDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_CASH_ORDER_DETAIL";
  static const String _primaryKey = "ID_CASH_ORDER_DETAIL";

  _AccCashOrderDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccCashOrderDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccCashOrderDetail.fromMap(map);
  }

  Future<List<AccCashOrderDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccCashOrderDetail.fromMap(f)).toList();
  }

  Future<AccCashOrderDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccCashOrderDetail.fromMap(f)).first : AccCashOrderDetail();
  }

  Future<Iterable<AccCashOrderDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccCashOrderDetail.fromMap(f));
  }
Future<bool> save(AccCashOrderDetail model) async {
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
abstract class AccCashOrderDetailRepository extends _AccCashOrderDetailRepositoryGenerated {
  factory AccCashOrderDetailRepository() = _AccCashOrderDetailRepositoryImpl;
}

class _AccCashOrderDetailRepositoryImpl extends _AccCashOrderDetailRepositoryGeneratedImpl
    implements AccCashOrderDetailRepository {
  static _AccCashOrderDetailRepositoryImpl _this;
  factory _AccCashOrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _AccCashOrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _AccCashOrderDetailRepositoryImpl._();
}
*/
