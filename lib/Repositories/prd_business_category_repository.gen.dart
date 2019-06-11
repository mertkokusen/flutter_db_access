import 'package:database_access_layer/Entities/prd_business_category.gen.dart';
import 'base_provider.dart';

abstract class _PrdBusinessCategoryRepositoryGenerated {
  Future<PrdBusinessCategory> getInstance(int idAgent);
  Future<bool> save(PrdBusinessCategory agent);
  Future<List<PrdBusinessCategory>> retrieveAll();
}

class _PrdBusinessCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdBusinessCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_BUSINESS_CATEGORY";
  static const String _primaryKey = "ID_BUSINESS_CATEGORY";

  _PrdBusinessCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdBusinessCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdBusinessCategory.fromMap(map);
  }

  Future<List<PrdBusinessCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdBusinessCategory.fromMap(f)).toList();
  }

  Future<PrdBusinessCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdBusinessCategory.fromMap(f)).first : PrdBusinessCategory();
  }

  Future<Iterable<PrdBusinessCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdBusinessCategory.fromMap(f));
  }
Future<bool> save(PrdBusinessCategory model) async {
    bool result;
    if (model.idBusinessCategory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idBusinessCategory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idBusinessCategory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdBusinessCategoryRepository extends _PrdBusinessCategoryRepositoryGenerated {
  factory PrdBusinessCategoryRepository() = _PrdBusinessCategoryRepositoryImpl;
}

class _PrdBusinessCategoryRepositoryImpl extends _PrdBusinessCategoryRepositoryGeneratedImpl
    implements PrdBusinessCategoryRepository {
  static _PrdBusinessCategoryRepositoryImpl _this;
  factory _PrdBusinessCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdBusinessCategoryRepositoryImpl._();
    }
    return _this;
  }
  _PrdBusinessCategoryRepositoryImpl._();
}
*/
