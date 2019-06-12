import 'package:database_access_layer/generated_entity/cus/coverage.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/coverage_repository.gen.dart';

abstract class CoverageRepository extends _CoverageRepositoryGenerated {
  factory CoverageRepository() = _CoverageRepositoryImpl;
}

class _CoverageRepositoryImpl extends _CoverageRepositoryGeneratedImpl
    implements CoverageRepository {
  static _CoverageRepositoryImpl _this;
  factory _CoverageRepositoryImpl() {
    if (_this == null) {
      _this = new _CoverageRepositoryImpl._();
    }
    return _this;
  }
  _CoverageRepositoryImpl._();
}

