import 'package:database_access_layer/generated_entity/acc/cash_order_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/acc/cash_order_detail_repository.gen.dart';

abstract class CashOrderDetailRepository extends _CashOrderDetailRepositoryGenerated {
  factory CashOrderDetailRepository() = _CashOrderDetailRepositoryImpl;
}

class _CashOrderDetailRepositoryImpl extends _CashOrderDetailRepositoryGeneratedImpl
    implements CashOrderDetailRepository {
  static _CashOrderDetailRepositoryImpl _this;
  factory _CashOrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CashOrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _CashOrderDetailRepositoryImpl._();
}

