import 'package:database_access_layer/generated_entity/app/parameter.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/app/parameter_repository.gen.dart';

abstract class ParameterRepository extends _ParameterRepositoryGenerated {
  factory ParameterRepository() = _ParameterRepositoryImpl;
}

class _ParameterRepositoryImpl extends _ParameterRepositoryGeneratedImpl
    implements ParameterRepository {
  static _ParameterRepositoryImpl _this;
  factory _ParameterRepositoryImpl() {
    if (_this == null) {
      _this = new _ParameterRepositoryImpl._();
    }
    return _this;
  }
  _ParameterRepositoryImpl._();
}

