import 'package:database_access_layer/generated_entity/cus/visit_type.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/visit_type_repository.gen.dart';

abstract class VisitTypeRepository extends _VisitTypeRepositoryGenerated {
  factory VisitTypeRepository() = _VisitTypeRepositoryImpl;
}

class _VisitTypeRepositoryImpl extends _VisitTypeRepositoryGeneratedImpl
    implements VisitTypeRepository {
  static _VisitTypeRepositoryImpl _this;
  factory _VisitTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitTypeRepositoryImpl._();
    }
    return _this;
  }
  _VisitTypeRepositoryImpl._();
}

