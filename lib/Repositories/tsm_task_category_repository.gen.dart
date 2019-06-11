import 'package:database_access_layer/Entities/tsm_task_category.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskCategoryRepositoryGenerated {
  Future<TsmTaskCategory> getInstance(int idAgent);
  Future<bool> save(TsmTaskCategory agent);
  Future<List<TsmTaskCategory>> retrieveAll();
}

class _TsmTaskCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_CATEGORY";
  static const String _primaryKey = "ID_TASK_CATEGORY";

  _TsmTaskCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskCategory.fromMap(map);
  }

  Future<List<TsmTaskCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskCategory.fromMap(f)).toList();
  }

  Future<TsmTaskCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskCategory.fromMap(f)).first : TsmTaskCategory();
  }

  Future<Iterable<TsmTaskCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskCategory.fromMap(f));
  }
Future<bool> save(TsmTaskCategory model) async {
    bool result;
    if (model.idTaskCategory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskCategory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskCategory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskCategoryRepository extends _TsmTaskCategoryRepositoryGenerated {
  factory TsmTaskCategoryRepository() = _TsmTaskCategoryRepositoryImpl;
}

class _TsmTaskCategoryRepositoryImpl extends _TsmTaskCategoryRepositoryGeneratedImpl
    implements TsmTaskCategoryRepository {
  static _TsmTaskCategoryRepositoryImpl _this;
  factory _TsmTaskCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskCategoryRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskCategoryRepositoryImpl._();
}
*/
