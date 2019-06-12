import 'package:database_access_layer/generated_entity/mem/audit_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/audit_detail_repository.gen.dart';

abstract class AuditDetailRepository extends _AuditDetailRepositoryGenerated {
  factory AuditDetailRepository() = _AuditDetailRepositoryImpl;
}

class _AuditDetailRepositoryImpl extends _AuditDetailRepositoryGeneratedImpl
    implements AuditDetailRepository {
  static _AuditDetailRepositoryImpl _this;
  factory _AuditDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditDetailRepositoryImpl._();
    }
    return _this;
  }
  _AuditDetailRepositoryImpl._();
}

