import 'package:database_access_layer/Entities/sur_survey_category.gen.dart';
import 'base_provider.dart';

abstract class _SurSurveyCategoryRepositoryGenerated {
  Future<SurSurveyCategory> getInstance(int idAgent);
  Future<bool> save(SurSurveyCategory agent);
  Future<List<SurSurveyCategory>> retrieveAll();
}

class _SurSurveyCategoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurSurveyCategoryRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_SURVEY_CATEGORY";
  static const String _primaryKey = "ID_SURVEY_CATEGORY";

  _SurSurveyCategoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurSurveyCategory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurSurveyCategory.fromMap(map);
  }

  Future<List<SurSurveyCategory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurSurveyCategory.fromMap(f)).toList();
  }

  Future<SurSurveyCategory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurSurveyCategory.fromMap(f)).first : SurSurveyCategory();
  }

  Future<Iterable<SurSurveyCategory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurSurveyCategory.fromMap(f));
  }
Future<bool> save(SurSurveyCategory model) async {
    bool result;
    if (model.idSurveyCategory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSurveyCategory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSurveyCategory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurSurveyCategoryRepository extends _SurSurveyCategoryRepositoryGenerated {
  factory SurSurveyCategoryRepository() = _SurSurveyCategoryRepositoryImpl;
}

class _SurSurveyCategoryRepositoryImpl extends _SurSurveyCategoryRepositoryGeneratedImpl
    implements SurSurveyCategoryRepository {
  static _SurSurveyCategoryRepositoryImpl _this;
  factory _SurSurveyCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _SurSurveyCategoryRepositoryImpl._();
    }
    return _this;
  }
  _SurSurveyCategoryRepositoryImpl._();
}
*/
