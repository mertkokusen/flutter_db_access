import 'package:database_access_layer/entities/cus/visit_list.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/visit_list_repository.gen.dart';

abstract class VisitListRepository extends _VisitListRepositoryGenerated {
  factory VisitListRepository() = _VisitListRepositoryImpl;
}

class _VisitListRepositoryImpl extends _VisitListRepositoryGeneratedImpl
    implements VisitListRepository {
  static _VisitListRepositoryImpl _this;
  factory _VisitListRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitListRepositoryImpl._();
    }
    return _this;
  }
  _VisitListRepositoryImpl._();
}

