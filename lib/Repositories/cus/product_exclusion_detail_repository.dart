import 'package:database_access_layer/generated_entity/cus/product_exclusion_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/product_exclusion_detail_repository.gen.dart';

abstract class ProductExclusionDetailRepository extends _ProductExclusionDetailRepositoryGenerated {
  factory ProductExclusionDetailRepository() = _ProductExclusionDetailRepositoryImpl;
}

class _ProductExclusionDetailRepositoryImpl extends _ProductExclusionDetailRepositoryGeneratedImpl
    implements ProductExclusionDetailRepository {
  static _ProductExclusionDetailRepositoryImpl _this;
  factory _ProductExclusionDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _ProductExclusionDetailRepositoryImpl._();
    }
    return _this;
  }
  _ProductExclusionDetailRepositoryImpl._();
}

