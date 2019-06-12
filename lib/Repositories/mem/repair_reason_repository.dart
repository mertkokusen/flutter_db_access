import 'package:database_access_layer/generated_entity/mem/repair_reason.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/repair_reason_repository.gen.dart';

abstract class RepairReasonRepository extends _RepairReasonRepositoryGenerated {
  factory RepairReasonRepository() = _RepairReasonRepositoryImpl;
}

class _RepairReasonRepositoryImpl extends _RepairReasonRepositoryGeneratedImpl
    implements RepairReasonRepository {
  static _RepairReasonRepositoryImpl _this;
  factory _RepairReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _RepairReasonRepositoryImpl._();
    }
    return _this;
  }
  _RepairReasonRepositoryImpl._();
}

