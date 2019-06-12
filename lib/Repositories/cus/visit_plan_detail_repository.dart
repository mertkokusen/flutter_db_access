import 'package:database_access_layer/generated_entity/cus/visit_plan_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/visit_plan_detail_repository.gen.dart';

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

