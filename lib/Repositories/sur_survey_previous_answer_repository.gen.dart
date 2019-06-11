import 'package:database_access_layer/Entities/sur_survey_previous_answer.gen.dart';
import 'base_provider.dart';

abstract class _SurSurveyPreviousAnswerRepositoryGenerated {
  Future<SurSurveyPreviousAnswer> getInstance(int idAgent);
  Future<bool> save(SurSurveyPreviousAnswer agent);
  Future<List<SurSurveyPreviousAnswer>> retrieveAll();
}

class _SurSurveyPreviousAnswerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurSurveyPreviousAnswerRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_SURVEY_PREVIOUS_ANSWER";
  static const String _primaryKey = "ID_SURVEY_PREVIOUS_ANSWER";

  _SurSurveyPreviousAnswerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurSurveyPreviousAnswer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurSurveyPreviousAnswer.fromMap(map);
  }

  Future<List<SurSurveyPreviousAnswer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurSurveyPreviousAnswer.fromMap(f)).toList();
  }

  Future<SurSurveyPreviousAnswer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurSurveyPreviousAnswer.fromMap(f)).first : SurSurveyPreviousAnswer();
  }

  Future<Iterable<SurSurveyPreviousAnswer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurSurveyPreviousAnswer.fromMap(f));
  }
Future<bool> save(SurSurveyPreviousAnswer model) async {
    bool result;
    if (model.idSurveyPreviousAnswer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSurveyPreviousAnswer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSurveyPreviousAnswer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurSurveyPreviousAnswerRepository extends _SurSurveyPreviousAnswerRepositoryGenerated {
  factory SurSurveyPreviousAnswerRepository() = _SurSurveyPreviousAnswerRepositoryImpl;
}

class _SurSurveyPreviousAnswerRepositoryImpl extends _SurSurveyPreviousAnswerRepositoryGeneratedImpl
    implements SurSurveyPreviousAnswerRepository {
  static _SurSurveyPreviousAnswerRepositoryImpl _this;
  factory _SurSurveyPreviousAnswerRepositoryImpl() {
    if (_this == null) {
      _this = new _SurSurveyPreviousAnswerRepositoryImpl._();
    }
    return _this;
  }
  _SurSurveyPreviousAnswerRepositoryImpl._();
}
*/
