import 'package:database_access_layer/Entities/sur_survey_question.gen.dart';
import 'base_provider.dart';

abstract class _SurSurveyQuestionRepositoryGenerated {
  Future<SurSurveyQuestion> getInstance(int idAgent);
  Future<bool> save(SurSurveyQuestion agent);
  Future<List<SurSurveyQuestion>> retrieveAll();
}

class _SurSurveyQuestionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurSurveyQuestionRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_SURVEY_QUESTION";
  static const String _primaryKey = "ID_SURVEY_QUESTION";

  _SurSurveyQuestionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurSurveyQuestion> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurSurveyQuestion.fromMap(map);
  }

  Future<List<SurSurveyQuestion>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurSurveyQuestion.fromMap(f)).toList();
  }

  Future<SurSurveyQuestion> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurSurveyQuestion.fromMap(f)).first : SurSurveyQuestion();
  }

  Future<Iterable<SurSurveyQuestion>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurSurveyQuestion.fromMap(f));
  }
Future<bool> save(SurSurveyQuestion model) async {
    bool result;
    if (model.idSurveyQuestion == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSurveyQuestion = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSurveyQuestion.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurSurveyQuestionRepository extends _SurSurveyQuestionRepositoryGenerated {
  factory SurSurveyQuestionRepository() = _SurSurveyQuestionRepositoryImpl;
}

class _SurSurveyQuestionRepositoryImpl extends _SurSurveyQuestionRepositoryGeneratedImpl
    implements SurSurveyQuestionRepository {
  static _SurSurveyQuestionRepositoryImpl _this;
  factory _SurSurveyQuestionRepositoryImpl() {
    if (_this == null) {
      _this = new _SurSurveyQuestionRepositoryImpl._();
    }
    return _this;
  }
  _SurSurveyQuestionRepositoryImpl._();
}
*/
