import 'package:database_access_layer/Entities/tsm_audit_previous_answer.gen.dart';
import 'base_provider.dart';

abstract class _TsmAuditPreviousAnswerRepositoryGenerated {
  Future<TsmAuditPreviousAnswer> getInstance(int idAgent);
  Future<bool> save(TsmAuditPreviousAnswer agent);
  Future<List<TsmAuditPreviousAnswer>> retrieveAll();
}

class _TsmAuditPreviousAnswerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmAuditPreviousAnswerRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_AUDIT_PREVIOUS_ANSWER";
  static const String _primaryKey = "ID_SURVEY_PREVIOUS_ANSWER";

  _TsmAuditPreviousAnswerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmAuditPreviousAnswer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmAuditPreviousAnswer.fromMap(map);
  }

  Future<List<TsmAuditPreviousAnswer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmAuditPreviousAnswer.fromMap(f)).toList();
  }

  Future<TsmAuditPreviousAnswer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmAuditPreviousAnswer.fromMap(f)).first : TsmAuditPreviousAnswer();
  }

  Future<Iterable<TsmAuditPreviousAnswer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmAuditPreviousAnswer.fromMap(f));
  }
Future<bool> save(TsmAuditPreviousAnswer model) async {
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
abstract class TsmAuditPreviousAnswerRepository extends _TsmAuditPreviousAnswerRepositoryGenerated {
  factory TsmAuditPreviousAnswerRepository() = _TsmAuditPreviousAnswerRepositoryImpl;
}

class _TsmAuditPreviousAnswerRepositoryImpl extends _TsmAuditPreviousAnswerRepositoryGeneratedImpl
    implements TsmAuditPreviousAnswerRepository {
  static _TsmAuditPreviousAnswerRepositoryImpl _this;
  factory _TsmAuditPreviousAnswerRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmAuditPreviousAnswerRepositoryImpl._();
    }
    return _this;
  }
  _TsmAuditPreviousAnswerRepositoryImpl._();
}
*/
