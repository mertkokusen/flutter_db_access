
part of '../../repositories/mem/repair_reason_repository.dart';

abstract class _RepairReasonRepositoryGenerated {
  Future<RepairReason> getInstance(int idAgent);
  Future<List<RepairReason>> retrieveAll();

 Future<bool> save(RepairReason agent);
}
class _RepairReasonRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RepairReasonRepositoryGeneratedImpl _this;
  static const String _tableName = "REPAIR_REASON";
  static const String _primaryKey = "ID_REPAIR_REASON";

  _RepairReasonRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RepairReason> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RepairReason.fromMap(map);
  }

  Future<List<RepairReason>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RepairReason.fromMap(f)).toList();
  }

  Future<RepairReason> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RepairReason.fromMap(f)).first : RepairReason();
  }

  Future<Iterable<RepairReason>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RepairReason.fromMap(f));
  }
Future<bool> save(RepairReason model) async {
    bool result;
    if (model.idRepairReason == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRepairReason = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRepairReason.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class RepairReasonRepository extends _RepairReasonRepositoryGenerated {
  factory RepairReasonRepository() = _RepairReasonRepositoryImpl;
}

class _RepairReasonRepositoryImpl extends _RepairReasonRepositoryGeneratedImpl
    implements RepairReasonRepository {
  static _RepairReasonRepositoryImpl _this;
  factory _RepairReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _RepairReasonRepositoryImpl._();
    }
    return _this;
  }
  _RepairReasonRepositoryImpl._();
}
*/
