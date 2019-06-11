import 'package:database_access_layer/Entities/sur_aep_planogram_detail.gen.dart';
import 'base_provider.dart';

abstract class _SurAepPlanogramDetailRepositoryGenerated {
  Future<SurAepPlanogramDetail> getInstance(int idAgent);
  Future<bool> save(SurAepPlanogramDetail agent);
  Future<List<SurAepPlanogramDetail>> retrieveAll();
}

class _SurAepPlanogramDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepPlanogramDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_PLANOGRAM_DETAIL";
  static const String _primaryKey = "ID_AEP_PLANOGRAM_DETAIL";

  _SurAepPlanogramDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepPlanogramDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepPlanogramDetail.fromMap(map);
  }

  Future<List<SurAepPlanogramDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepPlanogramDetail.fromMap(f)).toList();
  }

  Future<SurAepPlanogramDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepPlanogramDetail.fromMap(f)).first : SurAepPlanogramDetail();
  }

  Future<Iterable<SurAepPlanogramDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepPlanogramDetail.fromMap(f));
  }
Future<bool> save(SurAepPlanogramDetail model) async {
    bool result;
    if (model.idAepPlanogramDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepPlanogramDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepPlanogramDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepPlanogramDetailRepository extends _SurAepPlanogramDetailRepositoryGenerated {
  factory SurAepPlanogramDetailRepository() = _SurAepPlanogramDetailRepositoryImpl;
}

class _SurAepPlanogramDetailRepositoryImpl extends _SurAepPlanogramDetailRepositoryGeneratedImpl
    implements SurAepPlanogramDetailRepository {
  static _SurAepPlanogramDetailRepositoryImpl _this;
  factory _SurAepPlanogramDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepPlanogramDetailRepositoryImpl._();
    }
    return _this;
  }
  _SurAepPlanogramDetailRepositoryImpl._();
}
*/
