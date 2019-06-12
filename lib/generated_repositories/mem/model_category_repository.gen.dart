
part of '../../repositories/mem/model_category_repository.dart';

abstract class _ModelCategoryRepositoryGenerated {
  Future<ModelCategory> getInstance(int idAgent);
  Future<List<ModelCategory>> retrieveAll();

 Future<bool> save(ModelCategory agent);
}
class _ModelCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ModelCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "MODEL_CATEGORY";
  static const String _primaryKey = "ID_MODEL_CATEGORY";

  _ModelCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<ModelCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ModelCategory.fromMap(map);
  }

  Future<List<ModelCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ModelCategory.fromMap(f)).toList();
  }

  Future<ModelCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ModelCategory.fromMap(f)).first : ModelCategory();
  }

  Future<Iterable<ModelCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ModelCategory.fromMap(f));
  }
Future<bool> save(ModelCategory model) async {
    bool result;
    if (model.idModelCategory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idModelCategory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idModelCategory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class ModelCategoryRepository extends _ModelCategoryRepositoryGenerated {
  factory ModelCategoryRepository() = _ModelCategoryRepositoryImpl;
}

class _ModelCategoryRepositoryImpl extends _ModelCategoryRepositoryGeneratedImpl
    implements ModelCategoryRepository {
  static _ModelCategoryRepositoryImpl _this;
  factory _ModelCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _ModelCategoryRepositoryImpl._();
    }
    return _this;
  }
  _ModelCategoryRepositoryImpl._();
}
*/
