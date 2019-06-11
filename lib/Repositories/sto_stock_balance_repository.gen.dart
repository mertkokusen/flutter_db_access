import 'package:database_access_layer/Entities/sto_stock_balance.gen.dart';
import 'base_provider.dart';

abstract class _StoStockBalanceRepositoryGenerated {
  Future<StoStockBalance> getInstance(int idAgent);
  Future<bool> save(StoStockBalance agent);
  Future<List<StoStockBalance>> retrieveAll();
}

class _StoStockBalanceRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _StoStockBalanceRepositoryGeneratedImpl _this;
  static const String _tableName = "STO_STOCK_BALANCE";
  static const String _primaryKey = "ID_STOCK_BALANCE";

  _StoStockBalanceRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<StoStockBalance> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return StoStockBalance.fromMap(map);
  }

  Future<List<StoStockBalance>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => StoStockBalance.fromMap(f)).toList();
  }

  Future<StoStockBalance> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => StoStockBalance.fromMap(f)).first : StoStockBalance();
  }

  Future<Iterable<StoStockBalance>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => StoStockBalance.fromMap(f));
  }
Future<bool> save(StoStockBalance model) async {
    bool result;
    if (model.idStockBalance == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idStockBalance = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idStockBalance.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class StoStockBalanceRepository extends _StoStockBalanceRepositoryGenerated {
  factory StoStockBalanceRepository() = _StoStockBalanceRepositoryImpl;
}

class _StoStockBalanceRepositoryImpl extends _StoStockBalanceRepositoryGeneratedImpl
    implements StoStockBalanceRepository {
  static _StoStockBalanceRepositoryImpl _this;
  factory _StoStockBalanceRepositoryImpl() {
    if (_this == null) {
      _this = new _StoStockBalanceRepositoryImpl._();
    }
    return _this;
  }
  _StoStockBalanceRepositoryImpl._();
}
*/
