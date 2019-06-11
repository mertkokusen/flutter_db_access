import 'package:database_access_layer/Entities/sur_aep_equipment.gen.dart';
import 'base_provider.dart';

abstract class _SurAepEquipmentRepositoryGenerated {
  Future<SurAepEquipment> getInstance(int idAgent);
  Future<bool> save(SurAepEquipment agent);
  Future<List<SurAepEquipment>> retrieveAll();
}

class _SurAepEquipmentRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepEquipmentRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_EQUIPMENT";
  static const String _primaryKey = "ID_AEP_EQUIPMENT";

  _SurAepEquipmentRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepEquipment> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepEquipment.fromMap(map);
  }

  Future<List<SurAepEquipment>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepEquipment.fromMap(f)).toList();
  }

  Future<SurAepEquipment> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepEquipment.fromMap(f)).first : SurAepEquipment();
  }

  Future<Iterable<SurAepEquipment>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepEquipment.fromMap(f));
  }
Future<bool> save(SurAepEquipment model) async {
    bool result;
    if (model.idAepEquipment == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepEquipment = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepEquipment.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepEquipmentRepository extends _SurAepEquipmentRepositoryGenerated {
  factory SurAepEquipmentRepository() = _SurAepEquipmentRepositoryImpl;
}

class _SurAepEquipmentRepositoryImpl extends _SurAepEquipmentRepositoryGeneratedImpl
    implements SurAepEquipmentRepository {
  static _SurAepEquipmentRepositoryImpl _this;
  factory _SurAepEquipmentRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepEquipmentRepositoryImpl._();
    }
    return _this;
  }
  _SurAepEquipmentRepositoryImpl._();
}
*/
