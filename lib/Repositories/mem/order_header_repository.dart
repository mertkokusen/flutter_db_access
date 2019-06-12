import 'package:database_access_layer/entities/mem/order_header.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/order_header_repository.gen.dart';

abstract class OrderHeaderRepository extends _OrderHeaderRepositoryGenerated {
  factory OrderHeaderRepository() = _OrderHeaderRepositoryImpl;
}

class _OrderHeaderRepositoryImpl extends _OrderHeaderRepositoryGeneratedImpl
    implements OrderHeaderRepository {
  static _OrderHeaderRepositoryImpl _this;
  factory _OrderHeaderRepositoryImpl() {
    if (_this == null) {
      _this = new _OrderHeaderRepositoryImpl._();
    }
    return _this;
  }
  _OrderHeaderRepositoryImpl._();
}

