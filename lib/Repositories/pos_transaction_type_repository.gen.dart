import 'package:database_access_layer/Entities/pos_transaction_type.gen.dart';
import 'base_provider.dart';

abstract class _PosTransactionTypeRepositoryGenerated {
  Future<PosTransactionType> getInstance(int idAgent);
  Future<bool> save(PosTransactionType agent);
  Future<List<PosTransactionType>> retrieveAll();
}

class _PosTransactionTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PosTransactionTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "POS_TRANSACTION_TYPE";
  static const String _primaryKey = "ID_TRANSACTION_TYPE";

  _PosTransactionTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PosTransactionType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PosTransactionType.fromMap(map);
  }

  Future<List<PosTransactionType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PosTransactionType.fromMap(f)).toList();
  }

  Future<PosTransactionType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PosTransactionType.fromMap(f)).first : PosTransactionType();
  }

  Future<Iterable<PosTransactionType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PosTransactionType.fromMap(f));
  }
Future<bool> save(PosTransactionType model) async {
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
abstract class PosTransactionTypeRepository extends _PosTransactionTypeRepositoryGenerated {
  factory PosTransactionTypeRepository() = _PosTransactionTypeRepositoryImpl;
}

class _PosTransactionTypeRepositoryImpl extends _PosTransactionTypeRepositoryGeneratedImpl
    implements PosTransactionTypeRepository {
  static _PosTransactionTypeRepositoryImpl _this;
  factory _PosTransactionTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _PosTransactionTypeRepositoryImpl._();
    }
    return _this;
  }
  _PosTransactionTypeRepositoryImpl._();
}
*/
