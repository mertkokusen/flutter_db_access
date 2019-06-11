import 'package:database_access_layer/Entities/sur_result_aep_planogram_detail.gen.dart';
import 'base_provider.dart';

abstract class _SurResultAepPlanogramDetailRepositoryGenerated {
  Future<SurResultAepPlanogramDetail> getInstance(int idAgent);
  Future<bool> save(SurResultAepPlanogramDetail agent);
  Future<List<SurResultAepPlanogramDetail>> retrieveAll();
}

class _SurResultAepPlanogramDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultAepPlanogramDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_AEP_PLANOGRAM_DETAIL";
  static const String _primaryKey = "ID_RESULT_AEP_PLANOGRAM_DETAIL";

  _SurResultAepPlanogramDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultAepPlanogramDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultAepPlanogramDetail.fromMap(map);
  }

  Future<List<SurResultAepPlanogramDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultAepPlanogramDetail.fromMap(f)).toList();
  }

  Future<SurResultAepPlanogramDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultAepPlanogramDetail.fromMap(f)).first : SurResultAepPlanogramDetail();
  }

  Future<Iterable<SurResultAepPlanogramDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultAepPlanogramDetail.fromMap(f));
  }
Future<bool> save(SurResultAepPlanogramDetail model) async {
    bool result;
    if (model.idResultAepPlanogramDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultAepPlanogramDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultAepPlanogramDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultAepPlanogramDetailRepository extends _SurResultAepPlanogramDetailRepositoryGenerated {
  factory SurResultAepPlanogramDetailRepository() = _SurResultAepPlanogramDetailRepositoryImpl;
}

class _SurResultAepPlanogramDetailRepositoryImpl extends _SurResultAepPlanogramDetailRepositoryGeneratedImpl
    implements SurResultAepPlanogramDetailRepository {
  static _SurResultAepPlanogramDetailRepositoryImpl _this;
  factory _SurResultAepPlanogramDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultAepPlanogramDetailRepositoryImpl._();
    }
    return _this;
  }
  _SurResultAepPlanogramDetailRepositoryImpl._();
}
*/
