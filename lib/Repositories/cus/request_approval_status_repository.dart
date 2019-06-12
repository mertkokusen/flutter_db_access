import 'package:database_access_layer/generated_entity/cus/request_approval_status.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/request_approval_status_repository.gen.dart';

abstract class RequestApprovalStatusRepository extends _RequestApprovalStatusRepositoryGenerated {
  factory RequestApprovalStatusRepository() = _RequestApprovalStatusRepositoryImpl;
}

class _RequestApprovalStatusRepositoryImpl extends _RequestApprovalStatusRepositoryGeneratedImpl
    implements RequestApprovalStatusRepository {
  static _RequestApprovalStatusRepositoryImpl _this;
  factory _RequestApprovalStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestApprovalStatusRepositoryImpl._();
    }
    return _this;
  }
  _RequestApprovalStatusRepositoryImpl._();
}

