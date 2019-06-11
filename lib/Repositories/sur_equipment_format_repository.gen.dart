import 'package:database_access_layer/Entities/sur_equipment_format.gen.dart';
import 'base_provider.dart';

abstract class _SurEquipmentFormatRepositoryGenerated {
  Future<SurEquipmentFormat> getInstance(int idAgent);
  Future<bool> save(SurEquipmentFormat agent);
  Future<List<SurEquipmentFormat>> retrieveAll();
}

class _SurEquipmentFormatRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurEquipmentFormatRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_EQUIPMENT_FORMAT";
  static const String _primaryKey = "ID_EQUIPMENT_FORMAT";

  _SurEquipmentFormatRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurEquipmentFormat> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurEquipmentFormat.fromMap(map);
  }

  Future<List<SurEquipmentFormat>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurEquipmentFormat.fromMap(f)).toList();
  }

  Future<SurEquipmentFormat> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurEquipmentFormat.fromMap(f)).first : SurEquipmentFormat();
  }

  Future<Iterable<SurEquipmentFormat>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurEquipmentFormat.fromMap(f));
  }
Future<bool> save(SurEquipmentFormat model) async {
    bool result;
    if (model.idEquipmentFormat == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idEquipmentFormat = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idEquipmentFormat.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurEquipmentFormatRepository extends _SurEquipmentFormatRepositoryGenerated {
  factory SurEquipmentFormatRepository() = _SurEquipmentFormatRepositoryImpl;
}

class _SurEquipmentFormatRepositoryImpl extends _SurEquipmentFormatRepositoryGeneratedImpl
    implements SurEquipmentFormatRepository {
  static _SurEquipmentFormatRepositoryImpl _this;
  factory _SurEquipmentFormatRepositoryImpl() {
    if (_this == null) {
      _this = new _SurEquipmentFormatRepositoryImpl._();
    }
    return _this;
  }
  _SurEquipmentFormatRepositoryImpl._();
}
*/
