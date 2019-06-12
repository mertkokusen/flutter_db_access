
part of '../../repositories/mem/transaction_type_repository.dart';

abstract class _TransactionTypeRepositoryGenerated {
  Future<TransactionType> getInstance(int idAgent);
  Future<List<TransactionType>> retrieveAll();

 Future<bool> save(TransactionType agent);
}
class _TransactionTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TransactionTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "TRANSACTION_TYPE";
  static const String _primaryKey = "ID_TRANSACTION_TYPE";

  _TransactionTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TransactionType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TransactionType.fromMap(map);
  }

  Future<List<TransactionType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TransactionType.fromMap(f)).toList();
  }

  Future<TransactionType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TransactionType.fromMap(f)).first : TransactionType();
  }

  Future<Iterable<TransactionType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TransactionType.fromMap(f));
  }
Future<bool> save(TransactionType model) async {
    bool result;
    if (model.idTransactionType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTransactionType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTransactionType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TransactionTypeRepository extends _TransactionTypeRepositoryGenerated {
  factory TransactionTypeRepository() = _TransactionTypeRepositoryImpl;
}

class _TransactionTypeRepositoryImpl extends _TransactionTypeRepositoryGeneratedImpl
    implements TransactionTypeRepository {
  static _TransactionTypeRepositoryImpl _this;
  factory _TransactionTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _TransactionTypeRepositoryImpl._();
    }
    return _this;
  }
  _TransactionTypeRepositoryImpl._();
}
*/
