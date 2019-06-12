import 'package:database_access_layer/entities/mem/model.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/model_repository.gen.dart';

abstract class ModelRepository extends _ModelRepositoryGenerated {
  factory ModelRepository() = _ModelRepositoryImpl;
}

class _ModelRepositoryImpl extends _ModelRepositoryGeneratedImpl
    implements ModelRepository {
  static _ModelRepositoryImpl _this;
  factory _ModelRepositoryImpl() {
    if (_this == null) {
      _this = new _ModelRepositoryImpl._();
    }
    return _this;
  }
  _ModelRepositoryImpl._();
}

