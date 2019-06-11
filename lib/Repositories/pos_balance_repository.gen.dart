import 'package:database_access_layer/Entities/pos_balance.gen.dart';
import 'base_provider.dart';

abstract class _PosBalanceRepositoryGenerated {
  Future<PosBalance> getInstance(int idAgent);
  Future<bool> save(PosBalance agent);
  Future<List<PosBalance>> retrieveAll();
}

class _PosBalanceRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PosBalanceRepositoryGeneratedImpl _this;
  static const String _tableName = "POS_BALANCE";
  static const String _primaryKey = "ID_BALANCE";

  _PosBalanceRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PosBalance> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PosBalance.fromMap(map);
  }

  Future<List<PosBalance>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PosBalance.fromMap(f)).toList();
  }

  Future<PosBalance> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PosBalance.fromMap(f)).first : PosBalance();
  }

  Future<Iterable<PosBalance>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PosBalance.fromMap(f));
  }
Future<bool> save(PosBalance model) async {
    bool result;
    if (model.idBalance == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idBalance = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idBalance.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PosBalanceRepository extends _PosBalanceRepositoryGenerated {
  factory PosBalanceRepository() = _PosBalanceRepositoryImpl;
}

class _PosBalanceRepositoryImpl extends _PosBalanceRepositoryGeneratedImpl
    implements PosBalanceRepository {
  static _PosBalanceRepositoryImpl _this;
  factory _PosBalanceRepositoryImpl() {
    if (_this == null) {
      _this = new _PosBalanceRepositoryImpl._();
    }
    return _this;
  }
  _PosBalanceRepositoryImpl._();
}
*/
