import 'package:database_access_layer/generated_entity/mem/inventory.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/inventory_repository.gen.dart';

abstract class InventoryRepository extends _InventoryRepositoryGenerated {
  factory InventoryRepository() = _InventoryRepositoryImpl;
}

class _InventoryRepositoryImpl extends _InventoryRepositoryGeneratedImpl
    implements InventoryRepository {
  static _InventoryRepositoryImpl _this;
  factory _InventoryRepositoryImpl() {
    if (_this == null) {
      _this = new _InventoryRepositoryImpl._();
    }
    return _this;
  }
  _InventoryRepositoryImpl._();
}

