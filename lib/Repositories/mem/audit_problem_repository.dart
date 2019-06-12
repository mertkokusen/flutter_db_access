import 'package:database_access_layer/entities/mem/audit_problem.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/audit_problem_repository.gen.dart';

abstract class AuditProblemRepository extends _AuditProblemRepositoryGenerated {
  factory AuditProblemRepository() = _AuditProblemRepositoryImpl;
}

class _AuditProblemRepositoryImpl extends _AuditProblemRepositoryGeneratedImpl
    implements AuditProblemRepository {
  static _AuditProblemRepositoryImpl _this;
  factory _AuditProblemRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditProblemRepositoryImpl._();
    }
    return _this;
  }
  _AuditProblemRepositoryImpl._();
}

