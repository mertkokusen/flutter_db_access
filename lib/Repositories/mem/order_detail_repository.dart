import 'package:database_access_layer/entities/mem/order_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/order_detail_repository.gen.dart';

abstract class OrderDetailRepository extends _OrderDetailRepositoryGenerated {
  factory OrderDetailRepository() = _OrderDetailRepositoryImpl;
}

class _OrderDetailRepositoryImpl extends _OrderDetailRepositoryGeneratedImpl
    implements OrderDetailRepository {
  static _OrderDetailRepositoryImpl _this;
  factory _OrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _OrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _OrderDetailRepositoryImpl._();
}

