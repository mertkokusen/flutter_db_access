
part of '../../repositories/acc/cash_order_owner_repository.dart';

abstract class _CashOrderOwnerRepositoryGenerated {
  Future<CashOrderOwner> getInstance(int idAgent);
  Future<List<CashOrderOwner>> retrieveAll();

 Future<bool> save(CashOrderOwner agent);
}
class _CashOrderOwnerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CashOrderOwnerRepositoryGeneratedImpl _this;
  static const String _tableName = "CASH_ORDER_OWNER";
  static const String _primaryKey = "ID_CASH_ORDER_OWNER";

  _CashOrderOwnerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CashOrderOwner> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CashOrderOwner.fromMap(map);
  }

  Future<List<CashOrderOwner>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CashOrderOwner.fromMap(f)).toList();
  }

  Future<CashOrderOwner> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CashOrderOwner.fromMap(f)).first : CashOrderOwner();
  }

  Future<Iterable<CashOrderOwner>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CashOrderOwner.fromMap(f));
  }
Future<bool> save(CashOrderOwner model) async {
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
abstract class CashOrderOwnerRepository extends _CashOrderOwnerRepositoryGenerated {
  factory CashOrderOwnerRepository() = _CashOrderOwnerRepositoryImpl;
}

class _CashOrderOwnerRepositoryImpl extends _CashOrderOwnerRepositoryGeneratedImpl
    implements CashOrderOwnerRepository {
  static _CashOrderOwnerRepositoryImpl _this;
  factory _CashOrderOwnerRepositoryImpl() {
    if (_this == null) {
      _this = new _CashOrderOwnerRepositoryImpl._();
    }
    return _this;
  }
  _CashOrderOwnerRepositoryImpl._();
}
*/
