import 'package:database_access_layer/Entities/sur_equipment.gen.dart';
import 'base_provider.dart';

abstract class _SurEquipmentRepositoryGenerated {
  Future<SurEquipment> getInstance(int idAgent);
  Future<bool> save(SurEquipment agent);
  Future<List<SurEquipment>> retrieveAll();
}

class _SurEquipmentRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurEquipmentRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_EQUIPMENT";
  static const String _primaryKey = "ID_EQUIPMENT";

  _SurEquipmentRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurEquipment> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurEquipment.fromMap(map);
  }

  Future<List<SurEquipment>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurEquipment.fromMap(f)).toList();
  }

  Future<SurEquipment> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurEquipment.fromMap(f)).first : SurEquipment();
  }

  Future<Iterable<SurEquipment>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurEquipment.fromMap(f));
  }
Future<bool> save(SurEquipment model) async {
    bool result;
    if (model.idEquipment == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idEquipment = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idEquipment.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurEquipmentRepository extends _SurEquipmentRepositoryGenerated {
  factory SurEquipmentRepository() = _SurEquipmentRepositoryImpl;
}

class _SurEquipmentRepositoryImpl extends _SurEquipmentRepositoryGeneratedImpl
    implements SurEquipmentRepository {
  static _SurEquipmentRepositoryImpl _this;
  factory _SurEquipmentRepositoryImpl() {
    if (_this == null) {
      _this = new _SurEquipmentRepositoryImpl._();
    }
    return _this;
  }
  _SurEquipmentRepositoryImpl._();
}
*/
