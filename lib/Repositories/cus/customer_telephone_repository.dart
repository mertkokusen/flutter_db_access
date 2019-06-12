import 'package:database_access_layer/entities/cus/customer_telephone.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_telephone_repository.gen.dart';

abstract class CustomerTelephoneRepository extends _CustomerTelephoneRepositoryGenerated {
  factory CustomerTelephoneRepository() = _CustomerTelephoneRepositoryImpl;
}

class _CustomerTelephoneRepositoryImpl extends _CustomerTelephoneRepositoryGeneratedImpl
    implements CustomerTelephoneRepository {
  static _CustomerTelephoneRepositoryImpl _this;
  factory _CustomerTelephoneRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerTelephoneRepositoryImpl._();
    }
    return _this;
  }
  _CustomerTelephoneRepositoryImpl._();
}

