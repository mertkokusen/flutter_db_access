import 'package:database_access_layer/entities/cus/customer_mem_audit.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_mem_audit_repository.gen.dart';

abstract class CustomerMemAuditRepository extends _CustomerMemAuditRepositoryGenerated {
  factory CustomerMemAuditRepository() = _CustomerMemAuditRepositoryImpl;
}

class _CustomerMemAuditRepositoryImpl extends _CustomerMemAuditRepositoryGeneratedImpl
    implements CustomerMemAuditRepository {
  static _CustomerMemAuditRepositoryImpl _this;
  factory _CustomerMemAuditRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerMemAuditRepositoryImpl._();
    }
    return _this;
  }
  _CustomerMemAuditRepositoryImpl._();
}

