import 'package:database_access_layer/Entities/mem_business_category.gen.dart';
import 'base_provider.dart';

abstract class _MemBusinessCategoryRepositoryGenerated {
  Future<MemBusinessCategory> getInstance(int idAgent);
  Future<bool> save(MemBusinessCategory agent);
  Future<List<MemBusinessCategory>> retrieveAll();
}

class _MemBusinessCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemBusinessCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_BUSINESS_CATEGORY";
  static const String _primaryKey = "ID_BUSINESS_CATEGORY";

  _MemBusinessCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemBusinessCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemBusinessCategory.fromMap(map);
  }

  Future<List<MemBusinessCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemBusinessCategory.fromMap(f)).toList();
  }

  Future<MemBusinessCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemBusinessCategory.fromMap(f)).first : MemBusinessCategory();
  }

  Future<Iterable<MemBusinessCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemBusinessCategory.fromMap(f));
  }
Future<bool> save(MemBusinessCategory model) async {
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
abstract class MemBusinessCategoryRepository extends _MemBusinessCategoryRepositoryGenerated {
  factory MemBusinessCategoryRepository() = _MemBusinessCategoryRepositoryImpl;
}

class _MemBusinessCategoryRepositoryImpl extends _MemBusinessCategoryRepositoryGeneratedImpl
    implements MemBusinessCategoryRepository {
  static _MemBusinessCategoryRepositoryImpl _this;
  factory _MemBusinessCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _MemBusinessCategoryRepositoryImpl._();
    }
    return _this;
  }
  _MemBusinessCategoryRepositoryImpl._();
}
*/
