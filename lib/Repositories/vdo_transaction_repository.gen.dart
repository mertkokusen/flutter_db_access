import 'package:database_access_layer/Entities/vdo_transaction.gen.dart';
import 'base_provider.dart';

abstract class _VdoTransactionRepositoryGenerated {
  Future<VdoTransaction> getInstance(int idAgent);
  Future<bool> save(VdoTransaction agent);
  Future<List<VdoTransaction>> retrieveAll();
}

class _VdoTransactionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoTransactionRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_TRANSACTION";
  static const String _primaryKey = "ID_TRANSACTION";

  _VdoTransactionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoTransaction> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoTransaction.fromMap(map);
  }

  Future<List<VdoTransaction>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoTransaction.fromMap(f)).toList();
  }

  Future<VdoTransaction> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoTransaction.fromMap(f)).first : VdoTransaction();
  }

  Future<Iterable<VdoTransaction>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoTransaction.fromMap(f));
  }
Future<bool> save(VdoTransaction model) async {
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
abstract class VdoTransactionRepository extends _VdoTransactionRepositoryGenerated {
  factory VdoTransactionRepository() = _VdoTransactionRepositoryImpl;
}

class _VdoTransactionRepositoryImpl extends _VdoTransactionRepositoryGeneratedImpl
    implements VdoTransactionRepository {
  static _VdoTransactionRepositoryImpl _this;
  factory _VdoTransactionRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoTransactionRepositoryImpl._();
    }
    return _this;
  }
  _VdoTransactionRepositoryImpl._();
}
*/
