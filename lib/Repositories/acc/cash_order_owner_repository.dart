import 'package:database_access_layer/generated_entity/acc/cash_order_owner.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/acc/cash_order_owner_repository.gen.dart';

abstract class CashOrderOwnerRepository extends _CashOrderOwnerRepositoryGenerated {
  factory CashOrderOwnerRepository() = _CashOrderOwnerRepositoryImpl;
}

class _CashOrderOwnerRepositoryImpl extends _CashOrderOwnerRepositoryGeneratedImpl
    implements CashOrderOwnerRepository {
  static _CashOrderOwnerRepositoryImpl _this;
  factory _CashOrderOwnerRepositoryImpl() {
    if (_this == null) {
      _this = new _CashOrderOwnerRepositoryImpl._();
    }
    return _this;
  }
  _CashOrderOwnerRepositoryImpl._();
}

