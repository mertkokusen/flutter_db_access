import 'package:database_access_layer/entities/mem/model_category.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/model_category_repository.gen.dart';

abstract class ModelCategoryRepository extends _ModelCategoryRepositoryGenerated {
  factory ModelCategoryRepository() = _ModelCategoryRepositoryImpl;
}

class _ModelCategoryRepositoryImpl extends _ModelCategoryRepositoryGeneratedImpl
    implements ModelCategoryRepository {
  static _ModelCategoryRepositoryImpl _this;
  factory _ModelCategoryRepositoryImpl() {
    if (_this == null) {
      _this = new _ModelCategoryRepositoryImpl._();
    }
    return _this;
  }
  _ModelCategoryRepositoryImpl._();
}

