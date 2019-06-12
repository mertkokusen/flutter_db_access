import 'package:database_access_layer/generated_entity/int/product_dealer_code.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/int/product_dealer_code_repository.gen.dart';

abstract class ProductDealerCodeRepository extends _ProductDealerCodeRepositoryGenerated {
  factory ProductDealerCodeRepository() = _ProductDealerCodeRepositoryImpl;
}

class _ProductDealerCodeRepositoryImpl extends _ProductDealerCodeRepositoryGeneratedImpl
    implements ProductDealerCodeRepository {
  static _ProductDealerCodeRepositoryImpl _this;
  factory _ProductDealerCodeRepositoryImpl() {
    if (_this == null) {
      _this = new _ProductDealerCodeRepositoryImpl._();
    }
    return _this;
  }
  _ProductDealerCodeRepositoryImpl._();
}

