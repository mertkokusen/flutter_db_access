import 'package:database_access_layer/Entities/sto_customer_balance_detail.gen.dart';
import 'base_provider.dart';

abstract class _StoCustomerBalanceDetailRepositoryGenerated {
  Future<StoCustomerBalanceDetail> getInstance(int idAgent);
  Future<bool> save(StoCustomerBalanceDetail agent);
  Future<List<StoCustomerBalanceDetail>> retrieveAll();
}

class _StoCustomerBalanceDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _StoCustomerBalanceDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "STO_CUSTOMER_BALANCE_DETAIL";
  static const String _primaryKey = "";

  _StoCustomerBalanceDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<StoCustomerBalanceDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return StoCustomerBalanceDetail.fromMap(map);
  }

  Future<List<StoCustomerBalanceDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => StoCustomerBalanceDetail.fromMap(f)).toList();
  }

  Future<StoCustomerBalanceDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => StoCustomerBalanceDetail.fromMap(f)).first : StoCustomerBalanceDetail();
  }

  Future<Iterable<StoCustomerBalanceDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => StoCustomerBalanceDetail.fromMap(f));
  }
}
/*
abstract class StoCustomerBalanceDetailRepository extends _StoCustomerBalanceDetailRepositoryGenerated {
  factory StoCustomerBalanceDetailRepository() = _StoCustomerBalanceDetailRepositoryImpl;
}

class _StoCustomerBalanceDetailRepositoryImpl extends _StoCustomerBalanceDetailRepositoryGeneratedImpl
    implements StoCustomerBalanceDetailRepository {
  static _StoCustomerBalanceDetailRepositoryImpl _this;
  factory _StoCustomerBalanceDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _StoCustomerBalanceDetailRepositoryImpl._();
    }
    return _this;
  }
  _StoCustomerBalanceDetailRepositoryImpl._();
}
*/
