import 'package:database_access_layer/Entities/acc_customer_balance.gen.dart';
import 'base_provider.dart';

abstract class _AccCustomerBalanceRepositoryGenerated {
  Future<AccCustomerBalance> getInstance(int idAgent);
  Future<bool> save(AccCustomerBalance agent);
  Future<List<AccCustomerBalance>> retrieveAll();
}

class _AccCustomerBalanceRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccCustomerBalanceRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_CUSTOMER_BALANCE";
  static const String _primaryKey = "ID_CUSTOMER";

  _AccCustomerBalanceRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccCustomerBalance> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccCustomerBalance.fromMap(map);
  }

  Future<List<AccCustomerBalance>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccCustomerBalance.fromMap(f)).toList();
  }

  Future<AccCustomerBalance> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccCustomerBalance.fromMap(f)).first : AccCustomerBalance();
  }

  Future<Iterable<AccCustomerBalance>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccCustomerBalance.fromMap(f));
  }
Future<bool> save(AccCustomerBalance model) async {
    bool result;
    if (model.idCustomer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class AccCustomerBalanceRepository extends _AccCustomerBalanceRepositoryGenerated {
  factory AccCustomerBalanceRepository() = _AccCustomerBalanceRepositoryImpl;
}

class _AccCustomerBalanceRepositoryImpl extends _AccCustomerBalanceRepositoryGeneratedImpl
    implements AccCustomerBalanceRepository {
  static _AccCustomerBalanceRepositoryImpl _this;
  factory _AccCustomerBalanceRepositoryImpl() {
    if (_this == null) {
      _this = new _AccCustomerBalanceRepositoryImpl._();
    }
    return _this;
  }
  _AccCustomerBalanceRepositoryImpl._();
}
*/
