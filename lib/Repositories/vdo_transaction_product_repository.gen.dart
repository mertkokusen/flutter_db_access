import 'package:database_access_layer/Entities/vdo_transaction_product.gen.dart';
import 'base_provider.dart';

abstract class _VdoTransactionProductRepositoryGenerated {
  Future<VdoTransactionProduct> getInstance(int idAgent);
  Future<bool> save(VdoTransactionProduct agent);
  Future<List<VdoTransactionProduct>> retrieveAll();
}

class _VdoTransactionProductRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoTransactionProductRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_TRANSACTION_PRODUCT";
  static const String _primaryKey = "ID_TRANSACTION_PRODUCT";

  _VdoTransactionProductRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoTransactionProduct> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoTransactionProduct.fromMap(map);
  }

  Future<List<VdoTransactionProduct>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoTransactionProduct.fromMap(f)).toList();
  }

  Future<VdoTransactionProduct> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoTransactionProduct.fromMap(f)).first : VdoTransactionProduct();
  }

  Future<Iterable<VdoTransactionProduct>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoTransactionProduct.fromMap(f));
  }
Future<bool> save(VdoTransactionProduct model) async {
    bool result;
    if (model.idTransactionProduct == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTransactionProduct = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTransactionProduct.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VdoTransactionProductRepository extends _VdoTransactionProductRepositoryGenerated {
  factory VdoTransactionProductRepository() = _VdoTransactionProductRepositoryImpl;
}

class _VdoTransactionProductRepositoryImpl extends _VdoTransactionProductRepositoryGeneratedImpl
    implements VdoTransactionProductRepository {
  static _VdoTransactionProductRepositoryImpl _this;
  factory _VdoTransactionProductRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoTransactionProductRepositoryImpl._();
    }
    return _this;
  }
  _VdoTransactionProductRepositoryImpl._();
}
*/
