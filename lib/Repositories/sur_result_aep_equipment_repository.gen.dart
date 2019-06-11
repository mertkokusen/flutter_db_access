import 'package:database_access_layer/Entities/sur_result_aep_equipment.gen.dart';
import 'base_provider.dart';

abstract class _SurResultAepEquipmentRepositoryGenerated {
  Future<SurResultAepEquipment> getInstance(int idAgent);
  Future<bool> save(SurResultAepEquipment agent);
  Future<List<SurResultAepEquipment>> retrieveAll();
}

class _SurResultAepEquipmentRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultAepEquipmentRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_AEP_EQUIPMENT";
  static const String _primaryKey = "ID_RESULT_AEP_EQUIPMENT";

  _SurResultAepEquipmentRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultAepEquipment> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultAepEquipment.fromMap(map);
  }

  Future<List<SurResultAepEquipment>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultAepEquipment.fromMap(f)).toList();
  }

  Future<SurResultAepEquipment> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultAepEquipment.fromMap(f)).first : SurResultAepEquipment();
  }

  Future<Iterable<SurResultAepEquipment>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultAepEquipment.fromMap(f));
  }
Future<bool> save(SurResultAepEquipment model) async {
    bool result;
    if (model.idResultAepEquipment == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultAepEquipment = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultAepEquipment.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultAepEquipmentRepository extends _SurResultAepEquipmentRepositoryGenerated {
  factory SurResultAepEquipmentRepository() = _SurResultAepEquipmentRepositoryImpl;
}

class _SurResultAepEquipmentRepositoryImpl extends _SurResultAepEquipmentRepositoryGeneratedImpl
    implements SurResultAepEquipmentRepository {
  static _SurResultAepEquipmentRepositoryImpl _this;
  factory _SurResultAepEquipmentRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultAepEquipmentRepositoryImpl._();
    }
    return _this;
  }
  _SurResultAepEquipmentRepositoryImpl._();
}
*/
