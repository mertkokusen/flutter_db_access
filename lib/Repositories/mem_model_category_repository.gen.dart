import 'package:database_access_layer/Entities/mem_model_category.gen.dart';
import 'base_provider.dart';

abstract class _MemModelCategoryRepositoryGenerated {
  Future<MemModelCategory> getInstance(int idAgent);
  Future<bool> save(MemModelCategory agent);
  Future<List<MemModelCategory>> retrieveAll();
}

class _MemModelCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemModelCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_MODEL_CATEGORY";
  static const String _primaryKey = "ID_MODEL_CATEGORY";

  _MemModelCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemModelCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemModelCategory.fromMap(map);
  }

  Future<List<MemModelCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemModelCategory.fromMap(f)).toList();
  }

  Future<MemModelCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemModelCategory.fromMap(f)).first : MemModelCategory();
  }

  Future<Iterable<MemModelCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemModelCategory.fromMap(f));
  }
Future<bool> save(MemModelCategory model) async {
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
abstract class MemModelCategoryRepository extends _MemModelCategoryRepositoryGenerated {
  factory MemModelCategoryRepository() = _MemModelCategoryRepositoryImpl;
}

class _MemModelCategoryRepositoryImpl extends _MemModelCategoryRepositoryGeneratedImpl
    implements MemModelCategoryRepository {
  static _MemModelCategoryRepositoryImpl _this;
  factory _MemModelCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _MemModelCategoryRepositoryImpl._();
    }
    return _this;
  }
  _MemModelCategoryRepositoryImpl._();
}
*/
