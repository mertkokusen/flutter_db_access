import 'package:database_access_layer/generated_entity/acc/open_item.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/acc/open_item_repository.gen.dart';

abstract class OpenItemRepository extends _OpenItemRepositoryGenerated {
  factory OpenItemRepository() = _OpenItemRepositoryImpl;
}

class _OpenItemRepositoryImpl extends _OpenItemRepositoryGeneratedImpl
    implements OpenItemRepository {
  static _OpenItemRepositoryImpl _this;
  factory _OpenItemRepositoryImpl() {
    if (_this == null) {
      _this = new _OpenItemRepositoryImpl._();
    }
    return _this;
  }
  _OpenItemRepositoryImpl._();
}

