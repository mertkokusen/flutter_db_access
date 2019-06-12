import 'package:database_access_layer/entities/cus/visit_plan.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/visit_plan_repository.gen.dart';

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

