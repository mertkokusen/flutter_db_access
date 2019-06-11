import 'package:database_access_layer/Entities/prd_product_tax_region.gen.dart';
import 'base_provider.dart';

abstract class _PrdProductTaxRegionRepositoryGenerated {
  Future<PrdProductTaxRegion> getInstance(int idAgent);
  Future<bool> save(PrdProductTaxRegion agent);
  Future<List<PrdProductTaxRegion>> retrieveAll();
}

class _PrdProductTaxRegionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdProductTaxRegionRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRODUCT_TAX_REGION";
  static const String _primaryKey = "ID_PRODUCT_TAX_REGION";

  _PrdProductTaxRegionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdProductTaxRegion> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdProductTaxRegion.fromMap(map);
  }

  Future<List<PrdProductTaxRegion>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdProductTaxRegion.fromMap(f)).toList();
  }

  Future<PrdProductTaxRegion> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdProductTaxRegion.fromMap(f)).first : PrdProductTaxRegion();
  }

  Future<Iterable<PrdProductTaxRegion>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdProductTaxRegion.fromMap(f));
  }
Future<bool> save(PrdProductTaxRegion model) async {
    bool result;
    if (model.idProductTaxRegion == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductTaxRegion = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductTaxRegion.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdProductTaxRegionRepository extends _PrdProductTaxRegionRepositoryGenerated {
  factory PrdProductTaxRegionRepository() = _PrdProductTaxRegionRepositoryImpl;
}

class _PrdProductTaxRegionRepositoryImpl extends _PrdProductTaxRegionRepositoryGeneratedImpl
    implements PrdProductTaxRegionRepository {
  static _PrdProductTaxRegionRepositoryImpl _this;
  factory _PrdProductTaxRegionRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdProductTaxRegionRepositoryImpl._();
    }
    return _this;
  }
  _PrdProductTaxRegionRepositoryImpl._();
}
*/
