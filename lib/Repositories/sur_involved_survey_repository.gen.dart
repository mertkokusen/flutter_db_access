import 'package:database_access_layer/Entities/sur_involved_survey.gen.dart';
import 'base_provider.dart';

abstract class _SurInvolvedSurveyRepositoryGenerated {
  Future<SurInvolvedSurvey> getInstance(int idAgent);
  Future<bool> save(SurInvolvedSurvey agent);
  Future<List<SurInvolvedSurvey>> retrieveAll();
}

class _SurInvolvedSurveyRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurInvolvedSurveyRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_INVOLVED_SURVEY";
  static const String _primaryKey = "ID_INVOLVED_SURVEY";

  _SurInvolvedSurveyRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurInvolvedSurvey> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurInvolvedSurvey.fromMap(map);
  }

  Future<List<SurInvolvedSurvey>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurInvolvedSurvey.fromMap(f)).toList();
  }

  Future<SurInvolvedSurvey> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurInvolvedSurvey.fromMap(f)).first : SurInvolvedSurvey();
  }

  Future<Iterable<SurInvolvedSurvey>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurInvolvedSurvey.fromMap(f));
  }
Future<bool> save(SurInvolvedSurvey model) async {
    bool result;
    if (model.idInvolvedSurvey == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idInvolvedSurvey = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idInvolvedSurvey.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurInvolvedSurveyRepository extends _SurInvolvedSurveyRepositoryGenerated {
  factory SurInvolvedSurveyRepository() = _SurInvolvedSurveyRepositoryImpl;
}

class _SurInvolvedSurveyRepositoryImpl extends _SurInvolvedSurveyRepositoryGeneratedImpl
    implements SurInvolvedSurveyRepository {
  static _SurInvolvedSurveyRepositoryImpl _this;
  factory _SurInvolvedSurveyRepositoryImpl() {
    if (_this == null) {
      _this = new _SurInvolvedSurveyRepositoryImpl._();
    }
    return _this;
  }
  _SurInvolvedSurveyRepositoryImpl._();
}
*/
