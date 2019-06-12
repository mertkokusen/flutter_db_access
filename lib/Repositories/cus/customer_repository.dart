import 'package:database_access_layer/generated_entity/cus/customer.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_repository.gen.dart';

abstract class CustomerRepository extends _CustomerRepositoryGenerated {
  factory CustomerRepository() = _CustomerRepositoryImpl;
}

class _CustomerRepositoryImpl extends _CustomerRepositoryGeneratedImpl
    implements CustomerRepository {
  static _CustomerRepositoryImpl _this;
  factory _CustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerRepositoryImpl._();
    }
    return _this;
  }
  _CustomerRepositoryImpl._();
}

