import 'package:database_access_layer/entities/mem/logo_type.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/logo_type_repository.gen.dart';

abstract class LogoTypeRepository extends _LogoTypeRepositoryGenerated {
  factory LogoTypeRepository() = _LogoTypeRepositoryImpl;
}

class _LogoTypeRepositoryImpl extends _LogoTypeRepositoryGeneratedImpl
    implements LogoTypeRepository {
  static _LogoTypeRepositoryImpl _this;
  factory _LogoTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _LogoTypeRepositoryImpl._();
    }
    return _this;
  }
  _LogoTypeRepositoryImpl._();
}

