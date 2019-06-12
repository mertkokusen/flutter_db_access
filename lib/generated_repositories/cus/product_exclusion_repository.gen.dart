
part of '../../repositories/cus/product_exclusion_repository.dart';

abstract class _ProductExclusionRepositoryGenerated {
  Future<ProductExclusion> getInstance(int idAgent);
  Future<List<ProductExclusion>> retrieveAll();

 Future<bool> save(ProductExclusion agent);
}
class _ProductExclusionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ProductExclusionRepositoryGeneratedImpl _this;
  static const String _tableName = "PRODUCT_EXCLUSION";
  static const String _primaryKey = "ID_PRODUCT_EXCLUSION";

  _ProductExclusionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<ProductExclusion> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ProductExclusion.fromMap(map);
  }

  Future<List<ProductExclusion>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ProductExclusion.fromMap(f)).toList();
  }

  Future<ProductExclusion> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ProductExclusion.fromMap(f)).first : ProductExclusion();
  }

  Future<Iterable<ProductExclusion>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ProductExclusion.fromMap(f));
  }
Future<bool> save(ProductExclusion model) async {
    bool result;
    if (model.idProductExclusion == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductExclusion = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductExclusion.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class ProductExclusionRepository extends _ProductExclusionRepositoryGenerated {
  factory ProductExclusionRepository() = _ProductExclusionRepositoryImpl;
}

class _ProductExclusionRepositoryImpl extends _ProductExclusionRepositoryGeneratedImpl
    implements ProductExclusionRepository {
  static _ProductExclusionRepositoryImpl _this;
  factory _ProductExclusionRepositoryImpl() {
    if (_this == null) {
      _this = new _ProductExclusionRepositoryImpl._();
    }
    return _this;
  }
  _ProductExclusionRepositoryImpl._();
}
*/
