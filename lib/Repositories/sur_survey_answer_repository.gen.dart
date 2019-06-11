import 'package:database_access_layer/Entities/sur_survey_answer.gen.dart';
import 'base_provider.dart';

abstract class _SurSurveyAnswerRepositoryGenerated {
  Future<SurSurveyAnswer> getInstance(int idAgent);
  Future<bool> save(SurSurveyAnswer agent);
  Future<List<SurSurveyAnswer>> retrieveAll();
}

class _SurSurveyAnswerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurSurveyAnswerRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_SURVEY_ANSWER";
  static const String _primaryKey = "ID_SURVEY_ANSWER";

  _SurSurveyAnswerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurSurveyAnswer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurSurveyAnswer.fromMap(map);
  }

  Future<List<SurSurveyAnswer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurSurveyAnswer.fromMap(f)).toList();
  }

  Future<SurSurveyAnswer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurSurveyAnswer.fromMap(f)).first : SurSurveyAnswer();
  }

  Future<Iterable<SurSurveyAnswer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurSurveyAnswer.fromMap(f));
  }
Future<bool> save(SurSurveyAnswer model) async {
    bool result;
    if (model.idSurveyAnswer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSurveyAnswer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSurveyAnswer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurSurveyAnswerRepository extends _SurSurveyAnswerRepositoryGenerated {
  factory SurSurveyAnswerRepository() = _SurSurveyAnswerRepositoryImpl;
}

class _SurSurveyAnswerRepositoryImpl extends _SurSurveyAnswerRepositoryGeneratedImpl
    implements SurSurveyAnswerRepository {
  static _SurSurveyAnswerRepositoryImpl _this;
  factory _SurSurveyAnswerRepositoryImpl() {
    if (_this == null) {
      _this = new _SurSurveyAnswerRepositoryImpl._();
    }
    return _this;
  }
  _SurSurveyAnswerRepositoryImpl._();
}
*/
