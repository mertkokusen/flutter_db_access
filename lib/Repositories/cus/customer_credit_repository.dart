import 'package:database_access_layer/entities/cus/customer_credit.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_credit_repository.gen.dart';

abstract class CustomerCreditRepository extends _CustomerCreditRepositoryGenerated {
  factory CustomerCreditRepository() = _CustomerCreditRepositoryImpl;
}

class _CustomerCreditRepositoryImpl extends _CustomerCreditRepositoryGeneratedImpl
    implements CustomerCreditRepository {
  static _CustomerCreditRepositoryImpl _this;
  factory _CustomerCreditRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerCreditRepositoryImpl._();
    }
    return _this;
  }
  _CustomerCreditRepositoryImpl._();
}

