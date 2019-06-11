import 'package:database_access_layer/Entities/prd_product.gen.dart';
import 'base_provider.dart';

abstract class _PrdProductRepositoryGenerated {
  Future<PrdProduct> getInstance(int idAgent);
  Future<bool> save(PrdProduct agent);
  Future<List<PrdProduct>> retrieveAll();
}

class _PrdProductRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdProductRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRODUCT";
  static const String _primaryKey = "ID_PRODUCT";

  _PrdProductRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdProduct> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdProduct.fromMap(map);
  }

  Future<List<PrdProduct>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdProduct.fromMap(f)).toList();
  }

  Future<PrdProduct> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdProduct.fromMap(f)).first : PrdProduct();
  }

  Future<Iterable<PrdProduct>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdProduct.fromMap(f));
  }
Future<bool> save(PrdProduct model) async {
    bool result;
    if (model.idProduct == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProduct = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProduct.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdProductRepository extends _PrdProductRepositoryGenerated {
  factory PrdProductRepository() = _PrdProductRepositoryImpl;
}

class _PrdProductRepositoryImpl extends _PrdProductRepositoryGeneratedImpl
    implements PrdProductRepository {
  static _PrdProductRepositoryImpl _this;
  factory _PrdProductRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdProductRepositoryImpl._();
    }
    return _this;
  }
  _PrdProductRepositoryImpl._();
}
*/
