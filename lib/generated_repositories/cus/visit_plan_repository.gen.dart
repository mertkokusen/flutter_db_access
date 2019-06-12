
part of '../../repositories/cus/visit_plan_repository.dart';

abstract class _VisitPlanRepositoryGenerated {
  Future<VisitPlan> getInstance(int idAgent);
  Future<List<VisitPlan>> retrieveAll();

 Future<bool> save(VisitPlan agent);
}
class _VisitPlanRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VisitPlanRepositoryGeneratedImpl _this;
  static const String _tableName = "VISIT_PLAN";
  static const String _primaryKey = "ID_VISIT_PLAN";

  _VisitPlanRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VisitPlan> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VisitPlan.fromMap(map);
  }

  Future<List<VisitPlan>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VisitPlan.fromMap(f)).toList();
  }

  Future<VisitPlan> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VisitPlan.fromMap(f)).first : VisitPlan();
  }

  Future<Iterable<VisitPlan>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VisitPlan.fromMap(f));
  }
Future<bool> save(VisitPlan model) async {
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
abstract class VisitPlanRepository extends _VisitPlanRepositoryGenerated {
  factory VisitPlanRepository() = _VisitPlanRepositoryImpl;
}

class _VisitPlanRepositoryImpl extends _VisitPlanRepositoryGeneratedImpl
    implements VisitPlanRepository {
  static _VisitPlanRepositoryImpl _this;
  factory _VisitPlanRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitPlanRepositoryImpl._();
    }
    return _this;
  }
  _VisitPlanRepositoryImpl._();
}
*/
