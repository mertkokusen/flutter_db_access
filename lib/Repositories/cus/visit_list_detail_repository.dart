import 'package:database_access_layer/generated_entity/cus/visit_list_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/visit_list_detail_repository.gen.dart';

abstract class VisitListDetailRepository extends _VisitListDetailRepositoryGenerated {
  factory VisitListDetailRepository() = _VisitListDetailRepositoryImpl;
}

class _VisitListDetailRepositoryImpl extends _VisitListDetailRepositoryGeneratedImpl
    implements VisitListDetailRepository {
  static _VisitListDetailRepositoryImpl _this;
  factory _VisitListDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitListDetailRepositoryImpl._();
    }
    return _this;
  }
  _VisitListDetailRepositoryImpl._();
}

