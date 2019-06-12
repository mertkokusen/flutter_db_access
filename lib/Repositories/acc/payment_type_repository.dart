import 'package:database_access_layer/generated_entity/acc/payment_type.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/acc/payment_type_repository.gen.dart';

abstract class PaymentTypeRepository extends _PaymentTypeRepositoryGenerated {
  factory PaymentTypeRepository() = _PaymentTypeRepositoryImpl;
}

class _PaymentTypeRepositoryImpl extends _PaymentTypeRepositoryGeneratedImpl
    implements PaymentTypeRepository {
  static _PaymentTypeRepositoryImpl _this;
  factory _PaymentTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _PaymentTypeRepositoryImpl._();
    }
    return _this;
  }
  _PaymentTypeRepositoryImpl._();
}

