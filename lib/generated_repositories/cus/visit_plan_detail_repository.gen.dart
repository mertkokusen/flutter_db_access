
part of '../../repositories/cus/visit_plan_detail_repository.dart';

abstract class _VisitPlanDetailRepositoryGenerated {
  Future<VisitPlanDetail> getInstance(int idAgent);
  Future<List<VisitPlanDetail>> retrieveAll();

 Future<bool> save(VisitPlanDetail agent);
}
class _VisitPlanDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VisitPlanDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "VISIT_PLAN_DETAIL";
  static const String _primaryKey = "ID_VISIT_PLAN_DETAIL";

  _VisitPlanDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VisitPlanDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VisitPlanDetail.fromMap(map);
  }

  Future<List<VisitPlanDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VisitPlanDetail.fromMap(f)).toList();
  }

  Future<VisitPlanDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VisitPlanDetail.fromMap(f)).first : VisitPlanDetail();
  }

  Future<Iterable<VisitPlanDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VisitPlanDetail.fromMap(f));
  }
Future<bool> save(VisitPlanDetail model) async {
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
abstract class VisitPlanDetailRepository extends _VisitPlanDetailRepositoryGenerated {
  factory VisitPlanDetailRepository() = _VisitPlanDetailRepositoryImpl;
}

class _VisitPlanDetailRepositoryImpl extends _VisitPlanDetailRepositoryGeneratedImpl
    implements VisitPlanDetailRepository {
  static _VisitPlanDetailRepositoryImpl _this;
  factory _VisitPlanDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitPlanDetailRepositoryImpl._();
    }
    return _this;
  }
  _VisitPlanDetailRepositoryImpl._();
}
*/
