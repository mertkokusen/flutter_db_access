import 'package:database_access_layer/Entities/prd_product_group_product.gen.dart';
import 'base_provider.dart';

abstract class _PrdProductGroupProductRepositoryGenerated {
  Future<PrdProductGroupProduct> getInstance(int idAgent);
  Future<bool> save(PrdProductGroupProduct agent);
  Future<List<PrdProductGroupProduct>> retrieveAll();
}

class _PrdProductGroupProductRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdProductGroupProductRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRODUCT_GROUP_PRODUCT";
  static const String _primaryKey = "ID_PRODUCT_GROUP_PRODUCT";

  _PrdProductGroupProductRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdProductGroupProduct> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdProductGroupProduct.fromMap(map);
  }

  Future<List<PrdProductGroupProduct>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdProductGroupProduct.fromMap(f)).toList();
  }

  Future<PrdProductGroupProduct> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdProductGroupProduct.fromMap(f)).first : PrdProductGroupProduct();
  }

  Future<Iterable<PrdProductGroupProduct>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdProductGroupProduct.fromMap(f));
  }
Future<bool> save(PrdProductGroupProduct model) async {
    bool result;
    if (model.idProductGroupProduct == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductGroupProduct = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductGroupProduct.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdProductGroupProductRepository extends _PrdProductGroupProductRepositoryGenerated {
  factory PrdProductGroupProductRepository() = _PrdProductGroupProductRepositoryImpl;
}

class _PrdProductGroupProductRepositoryImpl extends _PrdProductGroupProductRepositoryGeneratedImpl
    implements PrdProductGroupProductRepository {
  static _PrdProductGroupProductRepositoryImpl _this;
  factory _PrdProductGroupProductRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdProductGroupProductRepositoryImpl._();
    }
    return _this;
  }
  _PrdProductGroupProductRepositoryImpl._();
}
*/
