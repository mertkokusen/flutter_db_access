import 'package:database_access_layer/entities/cus/customer_attribute.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_attribute_repository.gen.dart';

abstract class CustomerAttributeRepository extends _CustomerAttributeRepositoryGenerated {
  factory CustomerAttributeRepository() = _CustomerAttributeRepositoryImpl;
}

class _CustomerAttributeRepositoryImpl extends _CustomerAttributeRepositoryGeneratedImpl
    implements CustomerAttributeRepository {
  static _CustomerAttributeRepositoryImpl _this;
  factory _CustomerAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerAttributeRepositoryImpl._();
    }
    return _this;
  }
  _CustomerAttributeRepositoryImpl._();
}

