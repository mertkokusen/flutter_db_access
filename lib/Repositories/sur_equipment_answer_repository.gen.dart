import 'package:database_access_layer/Entities/sur_equipment_answer.gen.dart';
import 'base_provider.dart';

abstract class _SurEquipmentAnswerRepositoryGenerated {
  Future<SurEquipmentAnswer> getInstance(int idAgent);
  Future<bool> save(SurEquipmentAnswer agent);
  Future<List<SurEquipmentAnswer>> retrieveAll();
}

class _SurEquipmentAnswerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurEquipmentAnswerRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_EQUIPMENT_ANSWER";
  static const String _primaryKey = "ID_EQUIPMENT_ANSWER";

  _SurEquipmentAnswerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurEquipmentAnswer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurEquipmentAnswer.fromMap(map);
  }

  Future<List<SurEquipmentAnswer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurEquipmentAnswer.fromMap(f)).toList();
  }

  Future<SurEquipmentAnswer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurEquipmentAnswer.fromMap(f)).first : SurEquipmentAnswer();
  }

  Future<Iterable<SurEquipmentAnswer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurEquipmentAnswer.fromMap(f));
  }
Future<bool> save(SurEquipmentAnswer model) async {
    bool result;
    if (model.idEquipmentAnswer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idEquipmentAnswer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idEquipmentAnswer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurEquipmentAnswerRepository extends _SurEquipmentAnswerRepositoryGenerated {
  factory SurEquipmentAnswerRepository() = _SurEquipmentAnswerRepositoryImpl;
}

class _SurEquipmentAnswerRepositoryImpl extends _SurEquipmentAnswerRepositoryGeneratedImpl
    implements SurEquipmentAnswerRepository {
  static _SurEquipmentAnswerRepositoryImpl _this;
  factory _SurEquipmentAnswerRepositoryImpl() {
    if (_this == null) {
      _this = new _SurEquipmentAnswerRepositoryImpl._();
    }
    return _this;
  }
  _SurEquipmentAnswerRepositoryImpl._();
}
*/
