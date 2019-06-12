import 'package:database_access_layer/entities/acc/cash_order.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/acc/cash_order_repository.gen.dart';

abstract class CashOrderRepository extends _CashOrderRepositoryGenerated {
  factory CashOrderRepository() = _CashOrderRepositoryImpl;
}

class _CashOrderRepositoryImpl extends _CashOrderRepositoryGeneratedImpl
    implements CashOrderRepository {
  static _CashOrderRepositoryImpl _this;
  factory _CashOrderRepositoryImpl() {
    if (_this == null) {
      _this = new _CashOrderRepositoryImpl._();
    }
    return _this;
  }
  _CashOrderRepositoryImpl._();
}

