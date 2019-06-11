import 'package:database_access_layer/Entities/pda_answered_survey.gen.dart';
import 'base_provider.dart';

abstract class _PdaAnsweredSurveyRepositoryGenerated {
  Future<PdaAnsweredSurvey> getInstance(int idAgent);
  Future<bool> save(PdaAnsweredSurvey agent);
  Future<List<PdaAnsweredSurvey>> retrieveAll();
}

class _PdaAnsweredSurveyRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaAnsweredSurveyRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_ANSWERED_SURVEY";
  static const String _primaryKey = "ID_ANSWERED_SURVEY";

  _PdaAnsweredSurveyRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaAnsweredSurvey> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaAnsweredSurvey.fromMap(map);
  }

  Future<List<PdaAnsweredSurvey>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaAnsweredSurvey.fromMap(f)).toList();
  }

  Future<PdaAnsweredSurvey> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaAnsweredSurvey.fromMap(f)).first : PdaAnsweredSurvey();
  }

  Future<Iterable<PdaAnsweredSurvey>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaAnsweredSurvey.fromMap(f));
  }
Future<bool> save(PdaAnsweredSurvey model) async {
    bool result;
    if (model.idAnsweredSurvey == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAnsweredSurvey = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAnsweredSurvey.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaAnsweredSurveyRepository extends _PdaAnsweredSurveyRepositoryGenerated {
  factory PdaAnsweredSurveyRepository() = _PdaAnsweredSurveyRepositoryImpl;
}

class _PdaAnsweredSurveyRepositoryImpl extends _PdaAnsweredSurveyRepositoryGeneratedImpl
    implements PdaAnsweredSurveyRepository {
  static _PdaAnsweredSurveyRepositoryImpl _this;
  factory _PdaAnsweredSurveyRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaAnsweredSurveyRepositoryImpl._();
    }
    return _this;
  }
  _PdaAnsweredSurveyRepositoryImpl._();
}
*/
