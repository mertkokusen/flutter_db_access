import 'package:database_access_layer/Entities/sur_aep_product.gen.dart';
import 'base_provider.dart';

abstract class _SurAepProductRepositoryGenerated {
  Future<SurAepProduct> getInstance(int idAgent);
  Future<bool> save(SurAepProduct agent);
  Future<List<SurAepProduct>> retrieveAll();
}

class _SurAepProductRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepProductRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_PRODUCT";
  static const String _primaryKey = "ID_AEP_PRODUCT";

  _SurAepProductRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepProduct> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepProduct.fromMap(map);
  }

  Future<List<SurAepProduct>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepProduct.fromMap(f)).toList();
  }

  Future<SurAepProduct> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepProduct.fromMap(f)).first : SurAepProduct();
  }

  Future<Iterable<SurAepProduct>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepProduct.fromMap(f));
  }
Future<bool> save(SurAepProduct model) async {
    bool result;
    if (model.idAepProduct == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepProduct = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepProduct.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepProductRepository extends _SurAepProductRepositoryGenerated {
  factory SurAepProductRepository() = _SurAepProductRepositoryImpl;
}

class _SurAepProductRepositoryImpl extends _SurAepProductRepositoryGeneratedImpl
    implements SurAepProductRepository {
  static _SurAepProductRepositoryImpl _this;
  factory _SurAepProductRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepProductRepositoryImpl._();
    }
    return _this;
  }
  _SurAepProductRepositoryImpl._();
}
*/
