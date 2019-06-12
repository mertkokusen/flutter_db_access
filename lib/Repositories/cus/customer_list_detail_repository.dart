import 'package:database_access_layer/generated_entity/cus/customer_list_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_list_detail_repository.gen.dart';

abstract class CustomerListDetailRepository extends _CustomerListDetailRepositoryGenerated {
  factory CustomerListDetailRepository() = _CustomerListDetailRepositoryImpl;
}

class _CustomerListDetailRepositoryImpl extends _CustomerListDetailRepositoryGeneratedImpl
    implements CustomerListDetailRepository {
  static _CustomerListDetailRepositoryImpl _this;
  factory _CustomerListDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerListDetailRepositoryImpl._();
    }
    return _this;
  }
  _CustomerListDetailRepositoryImpl._();
}

