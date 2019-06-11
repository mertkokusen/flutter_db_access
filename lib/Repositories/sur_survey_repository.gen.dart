import 'package:database_access_layer/Entities/sur_survey.gen.dart';
import 'base_provider.dart';

abstract class _SurSurveyRepositoryGenerated {
  Future<SurSurvey> getInstance(int idAgent);
  Future<bool> save(SurSurvey agent);
  Future<List<SurSurvey>> retrieveAll();
}

class _SurSurveyRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurSurveyRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_SURVEY";
  static const String _primaryKey = "ID_SURVEY";

  _SurSurveyRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurSurvey> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurSurvey.fromMap(map);
  }

  Future<List<SurSurvey>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurSurvey.fromMap(f)).toList();
  }

  Future<SurSurvey> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurSurvey.fromMap(f)).first : SurSurvey();
  }

  Future<Iterable<SurSurvey>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurSurvey.fromMap(f));
  }
Future<bool> save(SurSurvey model) async {
    bool result;
    if (model.idSurvey == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSurvey = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSurvey.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurSurveyRepository extends _SurSurveyRepositoryGenerated {
  factory SurSurveyRepository() = _SurSurveyRepositoryImpl;
}

class _SurSurveyRepositoryImpl extends _SurSurveyRepositoryGeneratedImpl
    implements SurSurveyRepository {
  static _SurSurveyRepositoryImpl _this;
  factory _SurSurveyRepositoryImpl() {
    if (_this == null) {
      _this = new _SurSurveyRepositoryImpl._();
    }
    return _this;
  }
  _SurSurveyRepositoryImpl._();
}
*/
