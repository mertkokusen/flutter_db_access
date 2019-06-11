import 'package:database_access_layer/Entities/pos_transaction.gen.dart';
import 'base_provider.dart';

abstract class _PosTransactionRepositoryGenerated {
  Future<PosTransaction> getInstance(int idAgent);
  Future<bool> save(PosTransaction agent);
  Future<List<PosTransaction>> retrieveAll();
}

class _PosTransactionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PosTransactionRepositoryGeneratedImpl _this;
  static const String _tableName = "POS_TRANSACTION";
  static const String _primaryKey = "ID_TRANSACTION";

  _PosTransactionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PosTransaction> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PosTransaction.fromMap(map);
  }

  Future<List<PosTransaction>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PosTransaction.fromMap(f)).toList();
  }

  Future<PosTransaction> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PosTransaction.fromMap(f)).first : PosTransaction();
  }

  Future<Iterable<PosTransaction>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PosTransaction.fromMap(f));
  }
Future<bool> save(PosTransaction model) async {
    bool result;
    if (model.idTransaction == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTransaction = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTransaction.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PosTransactionRepository extends _PosTransactionRepositoryGenerated {
  factory PosTransactionRepository() = _PosTransactionRepositoryImpl;
}

class _PosTransactionRepositoryImpl extends _PosTransactionRepositoryGeneratedImpl
    implements PosTransactionRepository {
  static _PosTransactionRepositoryImpl _this;
  factory _PosTransactionRepositoryImpl() {
    if (_this == null) {
      _this = new _PosTransactionRepositoryImpl._();
    }
    return _this;
  }
  _PosTransactionRepositoryImpl._();
}
*/
