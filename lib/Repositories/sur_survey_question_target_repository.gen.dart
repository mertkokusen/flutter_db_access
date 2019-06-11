import 'package:database_access_layer/Entities/sur_survey_question_target.gen.dart';
import 'base_provider.dart';

abstract class _SurSurveyQuestionTargetRepositoryGenerated {
  Future<SurSurveyQuestionTarget> getInstance(int idAgent);
  Future<bool> save(SurSurveyQuestionTarget agent);
  Future<List<SurSurveyQuestionTarget>> retrieveAll();
}

class _SurSurveyQuestionTargetRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurSurveyQuestionTargetRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_SURVEY_QUESTION_TARGET";
  static const String _primaryKey = "ID_SURVEY_QUESTION_TARGET";

  _SurSurveyQuestionTargetRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurSurveyQuestionTarget> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurSurveyQuestionTarget.fromMap(map);
  }

  Future<List<SurSurveyQuestionTarget>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurSurveyQuestionTarget.fromMap(f)).toList();
  }

  Future<SurSurveyQuestionTarget> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurSurveyQuestionTarget.fromMap(f)).first : SurSurveyQuestionTarget();
  }

  Future<Iterable<SurSurveyQuestionTarget>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurSurveyQuestionTarget.fromMap(f));
  }
Future<bool> save(SurSurveyQuestionTarget model) async {
    bool result;
    if (model.idSurveyQuestionTarget == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSurveyQuestionTarget = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSurveyQuestionTarget.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurSurveyQuestionTargetRepository extends _SurSurveyQuestionTargetRepositoryGenerated {
  factory SurSurveyQuestionTargetRepository() = _SurSurveyQuestionTargetRepositoryImpl;
}

class _SurSurveyQuestionTargetRepositoryImpl extends _SurSurveyQuestionTargetRepositoryGeneratedImpl
    implements SurSurveyQuestionTargetRepository {
  static _SurSurveyQuestionTargetRepositoryImpl _this;
  factory _SurSurveyQuestionTargetRepositoryImpl() {
    if (_this == null) {
      _this = new _SurSurveyQuestionTargetRepositoryImpl._();
    }
    return _this;
  }
  _SurSurveyQuestionTargetRepositoryImpl._();
}
*/
