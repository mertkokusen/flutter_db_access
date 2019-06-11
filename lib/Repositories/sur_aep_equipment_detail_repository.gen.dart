import 'package:database_access_layer/Entities/sur_aep_equipment_detail.gen.dart';
import 'base_provider.dart';

abstract class _SurAepEquipmentDetailRepositoryGenerated {
  Future<SurAepEquipmentDetail> getInstance(int idAgent);
  Future<bool> save(SurAepEquipmentDetail agent);
  Future<List<SurAepEquipmentDetail>> retrieveAll();
}

class _SurAepEquipmentDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepEquipmentDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_EQUIPMENT_DETAIL";
  static const String _primaryKey = "ID_AEP_EQUIPMENT_DETAIL";

  _SurAepEquipmentDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepEquipmentDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepEquipmentDetail.fromMap(map);
  }

  Future<List<SurAepEquipmentDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepEquipmentDetail.fromMap(f)).toList();
  }

  Future<SurAepEquipmentDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepEquipmentDetail.fromMap(f)).first : SurAepEquipmentDetail();
  }

  Future<Iterable<SurAepEquipmentDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepEquipmentDetail.fromMap(f));
  }
Future<bool> save(SurAepEquipmentDetail model) async {
    bool result;
    if (model.idAepEquipmentDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepEquipmentDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepEquipmentDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepEquipmentDetailRepository extends _SurAepEquipmentDetailRepositoryGenerated {
  factory SurAepEquipmentDetailRepository() = _SurAepEquipmentDetailRepositoryImpl;
}

class _SurAepEquipmentDetailRepositoryImpl extends _SurAepEquipmentDetailRepositoryGeneratedImpl
    implements SurAepEquipmentDetailRepository {
  static _SurAepEquipmentDetailRepositoryImpl _this;
  factory _SurAepEquipmentDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepEquipmentDetailRepositoryImpl._();
    }
    return _this;
  }
  _SurAepEquipmentDetailRepositoryImpl._();
}
*/
