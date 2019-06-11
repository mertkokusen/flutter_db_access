import 'package:database_access_layer/Entities/cus_product_exclusion.gen.dart';
import 'base_provider.dart';

abstract class _CusProductExclusionRepositoryGenerated {
  Future<CusProductExclusion> getInstance(int idAgent);
  Future<bool> save(CusProductExclusion agent);
  Future<List<CusProductExclusion>> retrieveAll();
}

class _CusProductExclusionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusProductExclusionRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_PRODUCT_EXCLUSION";
  static const String _primaryKey = "ID_PRODUCT_EXCLUSION";

  _CusProductExclusionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusProductExclusion> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusProductExclusion.fromMap(map);
  }

  Future<List<CusProductExclusion>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusProductExclusion.fromMap(f)).toList();
  }

  Future<CusProductExclusion> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusProductExclusion.fromMap(f)).first : CusProductExclusion();
  }

  Future<Iterable<CusProductExclusion>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusProductExclusion.fromMap(f));
  }
Future<bool> save(CusProductExclusion model) async {
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
abstract class CusProductExclusionRepository extends _CusProductExclusionRepositoryGenerated {
  factory CusProductExclusionRepository() = _CusProductExclusionRepositoryImpl;
}

class _CusProductExclusionRepositoryImpl extends _CusProductExclusionRepositoryGeneratedImpl
    implements CusProductExclusionRepository {
  static _CusProductExclusionRepositoryImpl _this;
  factory _CusProductExclusionRepositoryImpl() {
    if (_this == null) {
      _this = new _CusProductExclusionRepositoryImpl._();
    }
    return _this;
  }
  _CusProductExclusionRepositoryImpl._();
}
*/
