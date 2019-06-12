
part of '../../repositories/cus/product_exclusion_detail_repository.dart';

abstract class _ProductExclusionDetailRepositoryGenerated {
  Future<ProductExclusionDetail> getInstance(int idAgent);
  Future<List<ProductExclusionDetail>> retrieveAll();

 Future<bool> save(ProductExclusionDetail agent);
}
class _ProductExclusionDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ProductExclusionDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "PRODUCT_EXCLUSION_DETAIL";
  static const String _primaryKey = "ID_PRODUCT_EXCLUSION_DETAIL";

  _ProductExclusionDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<ProductExclusionDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ProductExclusionDetail.fromMap(map);
  }

  Future<List<ProductExclusionDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ProductExclusionDetail.fromMap(f)).toList();
  }

  Future<ProductExclusionDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ProductExclusionDetail.fromMap(f)).first : ProductExclusionDetail();
  }

  Future<Iterable<ProductExclusionDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ProductExclusionDetail.fromMap(f));
  }
Future<bool> save(ProductExclusionDetail model) async {
    bool result;
    if (model.idProductExclusionDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductExclusionDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductExclusionDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class ProductExclusionDetailRepository extends _ProductExclusionDetailRepositoryGenerated {
  factory ProductExclusionDetailRepository() = _ProductExclusionDetailRepositoryImpl;
}

class _ProductExclusionDetailRepositoryImpl extends _ProductExclusionDetailRepositoryGeneratedImpl
    implements ProductExclusionDetailRepository {
  static _ProductExclusionDetailRepositoryImpl _this;
  factory _ProductExclusionDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _ProductExclusionDetailRepositoryImpl._();
    }
    return _this;
  }
  _ProductExclusionDetailRepositoryImpl._();
}
*/
