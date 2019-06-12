import 'package:database_access_layer/entities/mem/customer_inventory.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/customer_inventory_repository.gen.dart';

abstract class CustomerInventoryRepository extends _CustomerInventoryRepositoryGenerated {
  factory CustomerInventoryRepository() = _CustomerInventoryRepositoryImpl;
}

class _CustomerInventoryRepositoryImpl extends _CustomerInventoryRepositoryGeneratedImpl
    implements CustomerInventoryRepository {
  static _CustomerInventoryRepositoryImpl _this;
  factory _CustomerInventoryRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerInventoryRepositoryImpl._();
    }
    return _this;
  }
  _CustomerInventoryRepositoryImpl._();
}

