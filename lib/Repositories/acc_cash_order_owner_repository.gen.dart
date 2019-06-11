import 'package:database_access_layer/Entities/acc_cash_order_owner.gen.dart';
import 'base_provider.dart';

abstract class _AccCashOrderOwnerRepositoryGenerated {
  Future<AccCashOrderOwner> getInstance(int idAgent);
  Future<bool> save(AccCashOrderOwner agent);
  Future<List<AccCashOrderOwner>> retrieveAll();
}

class _AccCashOrderOwnerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccCashOrderOwnerRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_CASH_ORDER_OWNER";
  static const String _primaryKey = "ID_CASH_ORDER_OWNER";

  _AccCashOrderOwnerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccCashOrderOwner> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccCashOrderOwner.fromMap(map);
  }

  Future<List<AccCashOrderOwner>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccCashOrderOwner.fromMap(f)).toList();
  }

  Future<AccCashOrderOwner> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccCashOrderOwner.fromMap(f)).first : AccCashOrderOwner();
  }

  Future<Iterable<AccCashOrderOwner>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccCashOrderOwner.fromMap(f));
  }
Future<bool> save(AccCashOrderOwner model) async {
    bool result;
    if (model.idCashOrderOwner == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCashOrderOwner = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCashOrderOwner.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class AccCashOrderOwnerRepository extends _AccCashOrderOwnerRepositoryGenerated {
  factory AccCashOrderOwnerRepository() = _AccCashOrderOwnerRepositoryImpl;
}

class _AccCashOrderOwnerRepositoryImpl extends _AccCashOrderOwnerRepositoryGeneratedImpl
    implements AccCashOrderOwnerRepository {
  static _AccCashOrderOwnerRepositoryImpl _this;
  factory _AccCashOrderOwnerRepositoryImpl() {
    if (_this == null) {
      _this = new _AccCashOrderOwnerRepositoryImpl._();
    }
    return _this;
  }
  _AccCashOrderOwnerRepositoryImpl._();
}
*/
