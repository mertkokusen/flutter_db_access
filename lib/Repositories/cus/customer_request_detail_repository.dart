import 'package:database_access_layer/generated_entity/cus/customer_request_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_request_detail_repository.gen.dart';

abstract class CustomerRequestDetailRepository extends _CustomerRequestDetailRepositoryGenerated {
  factory CustomerRequestDetailRepository() = _CustomerRequestDetailRepositoryImpl;
}

class _CustomerRequestDetailRepositoryImpl extends _CustomerRequestDetailRepositoryGeneratedImpl
    implements CustomerRequestDetailRepository {
  static _CustomerRequestDetailRepositoryImpl _this;
  factory _CustomerRequestDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerRequestDetailRepositoryImpl._();
    }
    return _this;
  }
  _CustomerRequestDetailRepositoryImpl._();
}

