import 'package:database_access_layer/entities/cus/customer_payer.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_payer_repository.gen.dart';

abstract class CustomerPayerRepository extends _CustomerPayerRepositoryGenerated {
  factory CustomerPayerRepository() = _CustomerPayerRepositoryImpl;
}

class _CustomerPayerRepositoryImpl extends _CustomerPayerRepositoryGeneratedImpl
    implements CustomerPayerRepository {
  static _CustomerPayerRepositoryImpl _this;
  factory _CustomerPayerRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerPayerRepositoryImpl._();
    }
    return _this;
  }
  _CustomerPayerRepositoryImpl._();
}

