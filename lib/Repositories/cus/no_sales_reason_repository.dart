import 'package:database_access_layer/generated_entity/cus/no_sales_reason.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/no_sales_reason_repository.gen.dart';

abstract class NoSalesReasonRepository extends _NoSalesReasonRepositoryGenerated {
  factory NoSalesReasonRepository() = _NoSalesReasonRepositoryImpl;
}

class _NoSalesReasonRepositoryImpl extends _NoSalesReasonRepositoryGeneratedImpl
    implements NoSalesReasonRepository {
  static _NoSalesReasonRepositoryImpl _this;
  factory _NoSalesReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _NoSalesReasonRepositoryImpl._();
    }
    return _this;
  }
  _NoSalesReasonRepositoryImpl._();
}

