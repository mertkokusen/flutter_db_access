
part of '../../repositories/int/product_dealer_code_repository.dart';

abstract class _ProductDealerCodeRepositoryGenerated {
  Future<ProductDealerCode> getInstance(int idAgent);
  Future<List<ProductDealerCode>> retrieveAll();

 Future<bool> save(ProductDealerCode agent);
}
class _ProductDealerCodeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ProductDealerCodeRepositoryGeneratedImpl _this;
  static const String _tableName = "PRODUCT_DEALER_CODE";
  static const String _primaryKey = "ID_PRODUCT_DEALER_CODE";

  _ProductDealerCodeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<ProductDealerCode> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ProductDealerCode.fromMap(map);
  }

  Future<List<ProductDealerCode>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ProductDealerCode.fromMap(f)).toList();
  }

  Future<ProductDealerCode> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ProductDealerCode.fromMap(f)).first : ProductDealerCode();
  }

  Future<Iterable<ProductDealerCode>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ProductDealerCode.fromMap(f));
  }
Future<bool> save(ProductDealerCode model) async {
    bool result;
    if (model.idProductDealerCode == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductDealerCode = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductDealerCode.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class ProductDealerCodeRepository extends _ProductDealerCodeRepositoryGenerated {
  factory ProductDealerCodeRepository() = _ProductDealerCodeRepositoryImpl;
}

class _ProductDealerCodeRepositoryImpl extends _ProductDealerCodeRepositoryGeneratedImpl
    implements ProductDealerCodeRepository {
  static _ProductDealerCodeRepositoryImpl _this;
  factory _ProductDealerCodeRepositoryImpl() {
    if (_this == null) {
      _this = new _ProductDealerCodeRepositoryImpl._();
    }
    return _this;
  }
  _ProductDealerCodeRepositoryImpl._();
}
*/
