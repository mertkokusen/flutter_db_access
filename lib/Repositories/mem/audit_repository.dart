import 'package:database_access_layer/generated_entity/mem/audit.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/audit_repository.gen.dart';

abstract class AuditRepository extends _AuditRepositoryGenerated {
  factory AuditRepository() = _AuditRepositoryImpl;
}

class _AuditRepositoryImpl extends _AuditRepositoryGeneratedImpl
    implements AuditRepository {
  static _AuditRepositoryImpl _this;
  factory _AuditRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditRepositoryImpl._();
    }
    return _this;
  }
  _AuditRepositoryImpl._();
}

