import 'package:database_access_layer/Entities/sto_customer_balance.gen.dart';
import 'base_provider.dart';

abstract class _StoCustomerBalanceRepositoryGenerated {
  Future<StoCustomerBalance> getInstance(int idAgent);
  Future<bool> save(StoCustomerBalance agent);
  Future<List<StoCustomerBalance>> retrieveAll();
}

class _StoCustomerBalanceRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _StoCustomerBalanceRepositoryGeneratedImpl _this;
  static const String _tableName = "STO_CUSTOMER_BALANCE";
  static const String _primaryKey = "";

  _StoCustomerBalanceRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<StoCustomerBalance> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return StoCustomerBalance.fromMap(map);
  }

  Future<List<StoCustomerBalance>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => StoCustomerBalance.fromMap(f)).toList();
  }

  Future<StoCustomerBalance> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => StoCustomerBalance.fromMap(f)).first : StoCustomerBalance();
  }

  Future<Iterable<StoCustomerBalance>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => StoCustomerBalance.fromMap(f));
  }
}
/*
abstract class StoCustomerBalanceRepository extends _StoCustomerBalanceRepositoryGenerated {
  factory StoCustomerBalanceRepository() = _StoCustomerBalanceRepositoryImpl;
}

class _StoCustomerBalanceRepositoryImpl extends _StoCustomerBalanceRepositoryGeneratedImpl
    implements StoCustomerBalanceRepository {
  static _StoCustomerBalanceRepositoryImpl _this;
  factory _StoCustomerBalanceRepositoryImpl() {
    if (_this == null) {
      _this = new _StoCustomerBalanceRepositoryImpl._();
    }
    return _this;
  }
  _StoCustomerBalanceRepositoryImpl._();
}
*/
