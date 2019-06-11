import 'package:database_access_layer/Entities/mem_transaction_type.gen.dart';
import 'base_provider.dart';

abstract class _MemTransactionTypeRepositoryGenerated {
  Future<MemTransactionType> getInstance(int idAgent);
  Future<bool> save(MemTransactionType agent);
  Future<List<MemTransactionType>> retrieveAll();
}

class _MemTransactionTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemTransactionTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_TRANSACTION_TYPE";
  static const String _primaryKey = "ID_TRANSACTION_TYPE";

  _MemTransactionTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemTransactionType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemTransactionType.fromMap(map);
  }

  Future<List<MemTransactionType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemTransactionType.fromMap(f)).toList();
  }

  Future<MemTransactionType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemTransactionType.fromMap(f)).first : MemTransactionType();
  }

  Future<Iterable<MemTransactionType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemTransactionType.fromMap(f));
  }
Future<bool> save(MemTransactionType model) async {
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
abstract class MemTransactionTypeRepository extends _MemTransactionTypeRepositoryGenerated {
  factory MemTransactionTypeRepository() = _MemTransactionTypeRepositoryImpl;
}

class _MemTransactionTypeRepositoryImpl extends _MemTransactionTypeRepositoryGeneratedImpl
    implements MemTransactionTypeRepository {
  static _MemTransactionTypeRepositoryImpl _this;
  factory _MemTransactionTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _MemTransactionTypeRepositoryImpl._();
    }
    return _this;
  }
  _MemTransactionTypeRepositoryImpl._();
}
*/
