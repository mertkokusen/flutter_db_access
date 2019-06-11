import 'package:database_access_layer/Entities/pos_transaction_detail.gen.dart';
import 'base_provider.dart';

abstract class _PosTransactionDetailRepositoryGenerated {
  Future<PosTransactionDetail> getInstance(int idAgent);
  Future<bool> save(PosTransactionDetail agent);
  Future<List<PosTransactionDetail>> retrieveAll();
}

class _PosTransactionDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PosTransactionDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "POS_TRANSACTION_DETAIL";
  static const String _primaryKey = "ID_TRANSACTION_DETAIL";

  _PosTransactionDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PosTransactionDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PosTransactionDetail.fromMap(map);
  }

  Future<List<PosTransactionDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PosTransactionDetail.fromMap(f)).toList();
  }

  Future<PosTransactionDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PosTransactionDetail.fromMap(f)).first : PosTransactionDetail();
  }

  Future<Iterable<PosTransactionDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PosTransactionDetail.fromMap(f));
  }
Future<bool> save(PosTransactionDetail model) async {
    bool result;
    if (model.idTransactionDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTransactionDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTransactionDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PosTransactionDetailRepository extends _PosTransactionDetailRepositoryGenerated {
  factory PosTransactionDetailRepository() = _PosTransactionDetailRepositoryImpl;
}

class _PosTransactionDetailRepositoryImpl extends _PosTransactionDetailRepositoryGeneratedImpl
    implements PosTransactionDetailRepository {
  static _PosTransactionDetailRepositoryImpl _this;
  factory _PosTransactionDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _PosTransactionDetailRepositoryImpl._();
    }
    return _this;
  }
  _PosTransactionDetailRepositoryImpl._();
}
*/
