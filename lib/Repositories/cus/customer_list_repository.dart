import 'package:database_access_layer/entities/cus/customer_list.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_list_repository.gen.dart';

abstract class CustomerListRepository extends _CustomerListRepositoryGenerated {
  factory CustomerListRepository() = _CustomerListRepositoryImpl;
}

class _CustomerListRepositoryImpl extends _CustomerListRepositoryGeneratedImpl
    implements CustomerListRepository {
  static _CustomerListRepositoryImpl _this;
  factory _CustomerListRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerListRepositoryImpl._();
    }
    return _this;
  }
  _CustomerListRepositoryImpl._();
}

