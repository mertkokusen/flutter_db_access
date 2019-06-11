import 'package:database_access_layer/Entities/prd_category.gen.dart';
import 'base_provider.dart';

abstract class _PrdCategoryRepositoryGenerated {
  Future<PrdCategory> getInstance(int idAgent);
  Future<bool> save(PrdCategory agent);
  Future<List<PrdCategory>> retrieveAll();
}

class _PrdCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_CATEGORY";
  static const String _primaryKey = "ID_CATEGORY";

  _PrdCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdCategory.fromMap(map);
  }

  Future<List<PrdCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdCategory.fromMap(f)).toList();
  }

  Future<PrdCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdCategory.fromMap(f)).first : PrdCategory();
  }

  Future<Iterable<PrdCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdCategory.fromMap(f));
  }
Future<bool> save(PrdCategory model) async {
    bool result;
    if (model.idCategory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCategory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCategory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdCategoryRepository extends _PrdCategoryRepositoryGenerated {
  factory PrdCategoryRepository() = _PrdCategoryRepositoryImpl;
}

class _PrdCategoryRepositoryImpl extends _PrdCategoryRepositoryGeneratedImpl
    implements PrdCategoryRepository {
  static _PrdCategoryRepositoryImpl _this;
  factory _PrdCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdCategoryRepositoryImpl._();
    }
    return _this;
  }
  _PrdCategoryRepositoryImpl._();
}
*/
