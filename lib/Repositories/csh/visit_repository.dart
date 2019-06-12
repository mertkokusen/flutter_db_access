import 'package:database_access_layer/generated_entity/csh/visit.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/csh/visit_repository.gen.dart';

abstract class VisitRepository extends _VisitRepositoryGenerated {
  factory VisitRepository() = _VisitRepositoryImpl;
}

class _VisitRepositoryImpl extends _VisitRepositoryGeneratedImpl
    implements VisitRepository {
  static _VisitRepositoryImpl _this;
  factory _VisitRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitRepositoryImpl._();
    }
    return _this;
  }
  _VisitRepositoryImpl._();
}

