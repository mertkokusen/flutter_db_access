import 'package:database_access_layer/Entities/mem_repair_reason.gen.dart';
import 'base_provider.dart';

abstract class _MemRepairReasonRepositoryGenerated {
  Future<MemRepairReason> getInstance(int idAgent);
  Future<bool> save(MemRepairReason agent);
  Future<List<MemRepairReason>> retrieveAll();
}

class _MemRepairReasonRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemRepairReasonRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_REPAIR_REASON";
  static const String _primaryKey = "ID_REPAIR_REASON";

  _MemRepairReasonRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemRepairReason> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemRepairReason.fromMap(map);
  }

  Future<List<MemRepairReason>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemRepairReason.fromMap(f)).toList();
  }

  Future<MemRepairReason> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemRepairReason.fromMap(f)).first : MemRepairReason();
  }

  Future<Iterable<MemRepairReason>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemRepairReason.fromMap(f));
  }
Future<bool> save(MemRepairReason model) async {
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
abstract class MemRepairReasonRepository extends _MemRepairReasonRepositoryGenerated {
  factory MemRepairReasonRepository() = _MemRepairReasonRepositoryImpl;
}

class _MemRepairReasonRepositoryImpl extends _MemRepairReasonRepositoryGeneratedImpl
    implements MemRepairReasonRepository {
  static _MemRepairReasonRepositoryImpl _this;
  factory _MemRepairReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _MemRepairReasonRepositoryImpl._();
    }
    return _this;
  }
  _MemRepairReasonRepositoryImpl._();
}
*/
