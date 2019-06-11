import 'package:database_access_layer/Entities/acc_transaction_history.gen.dart';
import 'base_provider.dart';

abstract class _AccTransactionHistoryRepositoryGenerated {
  Future<AccTransactionHistory> getInstance(int idAgent);
  Future<bool> save(AccTransactionHistory agent);
  Future<List<AccTransactionHistory>> retrieveAll();
}

class _AccTransactionHistoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccTransactionHistoryRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_TRANSACTION_HISTORY";
  static const String _primaryKey = "ID_TRANSACTION_HISTORY";

  _AccTransactionHistoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccTransactionHistory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccTransactionHistory.fromMap(map);
  }

  Future<List<AccTransactionHistory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccTransactionHistory.fromMap(f)).toList();
  }

  Future<AccTransactionHistory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccTransactionHistory.fromMap(f)).first : AccTransactionHistory();
  }

  Future<Iterable<AccTransactionHistory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccTransactionHistory.fromMap(f));
  }
Future<bool> save(AccTransactionHistory model) async {
    bool result;
    if (model.idTransactionHistory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTransactionHistory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTransactionHistory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class AccTransactionHistoryRepository extends _AccTransactionHistoryRepositoryGenerated {
  factory AccTransactionHistoryRepository() = _AccTransactionHistoryRepositoryImpl;
}

class _AccTransactionHistoryRepositoryImpl extends _AccTransactionHistoryRepositoryGeneratedImpl
    implements AccTransactionHistoryRepository {
  static _AccTransactionHistoryRepositoryImpl _this;
  factory _AccTransactionHistoryRepositoryImpl() {
    if (_this == null) {
      _this = new _AccTransactionHistoryRepositoryImpl._();
    }
    return _this;
  }
  _AccTransactionHistoryRepositoryImpl._();
}
*/
