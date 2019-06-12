import 'package:database_access_layer/generated_entity/cus/contract_customer.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/contract_customer_repository.gen.dart';

abstract class ContractCustomerRepository extends _ContractCustomerRepositoryGenerated {
  factory ContractCustomerRepository() = _ContractCustomerRepositoryImpl;
}

class _ContractCustomerRepositoryImpl extends _ContractCustomerRepositoryGeneratedImpl
    implements ContractCustomerRepository {
  static _ContractCustomerRepositoryImpl _this;
  factory _ContractCustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _ContractCustomerRepositoryImpl._();
    }
    return _this;
  }
  _ContractCustomerRepositoryImpl._();
}

