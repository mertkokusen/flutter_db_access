import 'package:database_access_layer/entities/cus/customer_request.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_request_repository.gen.dart';

abstract class CustomerRequestRepository extends _CustomerRequestRepositoryGenerated {
  factory CustomerRequestRepository() = _CustomerRequestRepositoryImpl;
}

class _CustomerRequestRepositoryImpl extends _CustomerRequestRepositoryGeneratedImpl
    implements CustomerRequestRepository {
  static _CustomerRequestRepositoryImpl _this;
  factory _CustomerRequestRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerRequestRepositoryImpl._();
    }
    return _this;
  }
  _CustomerRequestRepositoryImpl._();
}

