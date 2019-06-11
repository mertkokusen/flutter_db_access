import 'package:database_access_layer/Entities/vdo_transaction_status.gen.dart';
import 'base_provider.dart';

abstract class _VdoTransactionStatusRepositoryGenerated {
  Future<VdoTransactionStatus> getInstance(int idAgent);
  Future<bool> save(VdoTransactionStatus agent);
  Future<List<VdoTransactionStatus>> retrieveAll();
}

class _VdoTransactionStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoTransactionStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_TRANSACTION_STATUS";
  static const String _primaryKey = "ID_TRANSACTION_STATUS";

  _VdoTransactionStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoTransactionStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoTransactionStatus.fromMap(map);
  }

  Future<List<VdoTransactionStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoTransactionStatus.fromMap(f)).toList();
  }

  Future<VdoTransactionStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoTransactionStatus.fromMap(f)).first : VdoTransactionStatus();
  }

  Future<Iterable<VdoTransactionStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoTransactionStatus.fromMap(f));
  }
Future<bool> save(VdoTransactionStatus model) async {
    bool result;
    if (model.idTransactionStatus == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTransactionStatus = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTransactionStatus.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VdoTransactionStatusRepository extends _VdoTransactionStatusRepositoryGenerated {
  factory VdoTransactionStatusRepository() = _VdoTransactionStatusRepositoryImpl;
}

class _VdoTransactionStatusRepositoryImpl extends _VdoTransactionStatusRepositoryGeneratedImpl
    implements VdoTransactionStatusRepository {
  static _VdoTransactionStatusRepositoryImpl _this;
  factory _VdoTransactionStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoTransactionStatusRepositoryImpl._();
    }
    return _this;
  }
  _VdoTransactionStatusRepositoryImpl._();
}
*/
