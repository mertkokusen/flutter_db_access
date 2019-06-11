import 'package:database_access_layer/Entities/sur_question_group.gen.dart';
import 'base_provider.dart';

abstract class _SurQuestionGroupRepositoryGenerated {
  Future<SurQuestionGroup> getInstance(int idAgent);
  Future<bool> save(SurQuestionGroup agent);
  Future<List<SurQuestionGroup>> retrieveAll();
}

class _SurQuestionGroupRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurQuestionGroupRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_QUESTION_GROUP";
  static const String _primaryKey = "ID_QUESTION_GROUP";

  _SurQuestionGroupRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurQuestionGroup> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurQuestionGroup.fromMap(map);
  }

  Future<List<SurQuestionGroup>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurQuestionGroup.fromMap(f)).toList();
  }

  Future<SurQuestionGroup> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurQuestionGroup.fromMap(f)).first : SurQuestionGroup();
  }

  Future<Iterable<SurQuestionGroup>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurQuestionGroup.fromMap(f));
  }
Future<bool> save(SurQuestionGroup model) async {
    bool result;
    if (model.idQuestionGroup == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idQuestionGroup = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idQuestionGroup.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurQuestionGroupRepository extends _SurQuestionGroupRepositoryGenerated {
  factory SurQuestionGroupRepository() = _SurQuestionGroupRepositoryImpl;
}

class _SurQuestionGroupRepositoryImpl extends _SurQuestionGroupRepositoryGeneratedImpl
    implements SurQuestionGroupRepository {
  static _SurQuestionGroupRepositoryImpl _this;
  factory _SurQuestionGroupRepositoryImpl() {
    if (_this == null) {
      _this = new _SurQuestionGroupRepositoryImpl._();
    }
    return _this;
  }
  _SurQuestionGroupRepositoryImpl._();
}
*/
