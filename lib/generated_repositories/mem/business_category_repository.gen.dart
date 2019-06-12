
part of '../../repositories/mem/business_category_repository.dart';

abstract class _BusinessCategoryRepositoryGenerated {
  Future<BusinessCategory> getInstance(int idAgent);
  Future<List<BusinessCategory>> retrieveAll();

 Future<bool> save(BusinessCategory agent);
}
class _BusinessCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _BusinessCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "BUSINESS_CATEGORY";
  static const String _primaryKey = "ID_BUSINESS_CATEGORY";

  _BusinessCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<BusinessCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return BusinessCategory.fromMap(map);
  }

  Future<List<BusinessCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => BusinessCategory.fromMap(f)).toList();
  }

  Future<BusinessCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => BusinessCategory.fromMap(f)).first : BusinessCategory();
  }

  Future<Iterable<BusinessCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => BusinessCategory.fromMap(f));
  }
Future<bool> save(BusinessCategory model) async {
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
abstract class BusinessCategoryRepository extends _BusinessCategoryRepositoryGenerated {
  factory BusinessCategoryRepository() = _BusinessCategoryRepositoryImpl;
}

class _BusinessCategoryRepositoryImpl extends _BusinessCategoryRepositoryGeneratedImpl
    implements BusinessCategoryRepository {
  static _BusinessCategoryRepositoryImpl _this;
  factory _BusinessCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _BusinessCategoryRepositoryImpl._();
    }
    return _this;
  }
  _BusinessCategoryRepositoryImpl._();
}
*/
