import 'package:database_access_layer/entities/mem/business_category.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/business_category_repository.gen.dart';

abstract class BusinessCategoryRepository extends _BusinessCategoryRepositoryGenerated {
  factory BusinessCategoryRepository() = _BusinessCategoryRepositoryImpl;
}

class _BusinessCategoryRepositoryImpl extends _BusinessCategoryRepositoryGeneratedImpl
    implements BusinessCategoryRepository {
  static _BusinessCategoryRepositoryImpl _this;
  factory _BusinessCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _BusinessCategoryRepositoryImpl._();
    }
    return _this;
  }
  _BusinessCategoryRepositoryImpl._();
}

