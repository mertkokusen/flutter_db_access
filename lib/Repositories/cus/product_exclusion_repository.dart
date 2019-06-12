import 'package:database_access_layer/entities/cus/product_exclusion.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/product_exclusion_repository.gen.dart';

abstract class ProductExclusionRepository extends _ProductExclusionRepositoryGenerated {
  factory ProductExclusionRepository() = _ProductExclusionRepositoryImpl;
}

class _ProductExclusionRepositoryImpl extends _ProductExclusionRepositoryGeneratedImpl
    implements ProductExclusionRepository {
  static _ProductExclusionRepositoryImpl _this;
  factory _ProductExclusionRepositoryImpl() {
    if (_this == null) {
      _this = new _ProductExclusionRepositoryImpl._();
    }
    return _this;
  }
  _ProductExclusionRepositoryImpl._();
}

