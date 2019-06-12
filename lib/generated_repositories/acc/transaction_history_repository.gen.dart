
part of '../../repositories/acc/transaction_history_repository.dart';

abstract class _TransactionHistoryRepositoryGenerated {
  Future<TransactionHistory> getInstance(int idAgent);
  Future<List<TransactionHistory>> retrieveAll();

 Future<bool> save(TransactionHistory agent);
}
class _TransactionHistoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TransactionHistoryRepositoryGeneratedImpl _this;
  static const String _tableName = "TRANSACTION_HISTORY";
  static const String _primaryKey = "ID_TRANSACTION_HISTORY";

  _TransactionHistoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TransactionHistory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TransactionHistory.fromMap(map);
  }

  Future<List<TransactionHistory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TransactionHistory.fromMap(f)).toList();
  }

  Future<TransactionHistory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TransactionHistory.fromMap(f)).first : TransactionHistory();
  }

  Future<Iterable<TransactionHistory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TransactionHistory.fromMap(f));
  }
Future<bool> save(TransactionHistory model) async {
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
abstract class TransactionHistoryRepository extends _TransactionHistoryRepositoryGenerated {
  factory TransactionHistoryRepository() = _TransactionHistoryRepositoryImpl;
}

class _TransactionHistoryRepositoryImpl extends _TransactionHistoryRepositoryGeneratedImpl
    implements TransactionHistoryRepository {
  static _TransactionHistoryRepositoryImpl _this;
  factory _TransactionHistoryRepositoryImpl() {
    if (_this == null) {
      _this = new _TransactionHistoryRepositoryImpl._();
    }
    return _this;
  }
  _TransactionHistoryRepositoryImpl._();
}
*/
