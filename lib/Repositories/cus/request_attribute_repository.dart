import 'package:database_access_layer/generated_entity/cus/request_attribute.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/request_attribute_repository.gen.dart';

abstract class RequestAttributeRepository extends _RequestAttributeRepositoryGenerated {
  factory RequestAttributeRepository() = _RequestAttributeRepositoryImpl;
}

class _RequestAttributeRepositoryImpl extends _RequestAttributeRepositoryGeneratedImpl
    implements RequestAttributeRepository {
  static _RequestAttributeRepositoryImpl _this;
  factory _RequestAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestAttributeRepositoryImpl._();
    }
    return _this;
  }
  _RequestAttributeRepositoryImpl._();
}

