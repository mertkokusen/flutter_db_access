import 'package:database_access_layer/Entities/cus_visit_plan_detail.gen.dart';
import 'base_provider.dart';

abstract class _CusVisitPlanDetailRepositoryGenerated {
  Future<CusVisitPlanDetail> getInstance(int idAgent);
  Future<bool> save(CusVisitPlanDetail agent);
  Future<List<CusVisitPlanDetail>> retrieveAll();
}

class _CusVisitPlanDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusVisitPlanDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_VISIT_PLAN_DETAIL";
  static const String _primaryKey = "ID_VISIT_PLAN_DETAIL";

  _CusVisitPlanDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusVisitPlanDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusVisitPlanDetail.fromMap(map);
  }

  Future<List<CusVisitPlanDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusVisitPlanDetail.fromMap(f)).toList();
  }

  Future<CusVisitPlanDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusVisitPlanDetail.fromMap(f)).first : CusVisitPlanDetail();
  }

  Future<Iterable<CusVisitPlanDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusVisitPlanDetail.fromMap(f));
  }
Future<bool> save(CusVisitPlanDetail model) async {
    bool result;
    if (model.idVisitPlanDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitPlanDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitPlanDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusVisitPlanDetailRepository extends _CusVisitPlanDetailRepositoryGenerated {
  factory CusVisitPlanDetailRepository() = _CusVisitPlanDetailRepositoryImpl;
}

class _CusVisitPlanDetailRepositoryImpl extends _CusVisitPlanDetailRepositoryGeneratedImpl
    implements CusVisitPlanDetailRepository {
  static _CusVisitPlanDetailRepositoryImpl _this;
  factory _CusVisitPlanDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CusVisitPlanDetailRepositoryImpl._();
    }
    return _this;
  }
  _CusVisitPlanDetailRepositoryImpl._();
}
*/
