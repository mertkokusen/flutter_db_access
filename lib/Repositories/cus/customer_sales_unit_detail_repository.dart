import 'package:database_access_layer/generated_entity/cus/customer_sales_unit_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_sales_unit_detail_repository.gen.dart';

abstract class CustomerSalesUnitDetailRepository extends _CustomerSalesUnitDetailRepositoryGenerated {
  factory CustomerSalesUnitDetailRepository() = _CustomerSalesUnitDetailRepositoryImpl;
}

class _CustomerSalesUnitDetailRepositoryImpl extends _CustomerSalesUnitDetailRepositoryGeneratedImpl
    implements CustomerSalesUnitDetailRepository {
  static _CustomerSalesUnitDetailRepositoryImpl _this;
  factory _CustomerSalesUnitDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerSalesUnitDetailRepositoryImpl._();
    }
    return _this;
  }
  _CustomerSalesUnitDetailRepositoryImpl._();
}

