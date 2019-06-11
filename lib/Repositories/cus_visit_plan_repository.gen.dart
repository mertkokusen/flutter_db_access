import 'package:database_access_layer/Entities/cus_visit_plan.gen.dart';
import 'base_provider.dart';

abstract class _CusVisitPlanRepositoryGenerated {
  Future<CusVisitPlan> getInstance(int idAgent);
  Future<bool> save(CusVisitPlan agent);
  Future<List<CusVisitPlan>> retrieveAll();
}

class _CusVisitPlanRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusVisitPlanRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_VISIT_PLAN";
  static const String _primaryKey = "ID_VISIT_PLAN";

  _CusVisitPlanRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusVisitPlan> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusVisitPlan.fromMap(map);
  }

  Future<List<CusVisitPlan>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusVisitPlan.fromMap(f)).toList();
  }

  Future<CusVisitPlan> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusVisitPlan.fromMap(f)).first : CusVisitPlan();
  }

  Future<Iterable<CusVisitPlan>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusVisitPlan.fromMap(f));
  }
Future<bool> save(CusVisitPlan model) async {
    bool result;
    if (model.idVisitPlan == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitPlan = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitPlan.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusVisitPlanRepository extends _CusVisitPlanRepositoryGenerated {
  factory CusVisitPlanRepository() = _CusVisitPlanRepositoryImpl;
}

class _CusVisitPlanRepositoryImpl extends _CusVisitPlanRepositoryGeneratedImpl
    implements CusVisitPlanRepository {
  static _CusVisitPlanRepositoryImpl _this;
  factory _CusVisitPlanRepositoryImpl() {
    if (_this == null) {
      _this = new _CusVisitPlanRepositoryImpl._();
    }
    return _this;
  }
  _CusVisitPlanRepositoryImpl._();
}
*/
