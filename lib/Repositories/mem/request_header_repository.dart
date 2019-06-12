import 'package:database_access_layer/entities/mem/request_header.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/request_header_repository.gen.dart';

abstract class RequestHeaderRepository extends _RequestHeaderRepositoryGenerated {
  factory RequestHeaderRepository() = _RequestHeaderRepositoryImpl;
}

class _RequestHeaderRepositoryImpl extends _RequestHeaderRepositoryGeneratedImpl
    implements RequestHeaderRepository {
  static _RequestHeaderRepositoryImpl _this;
  factory _RequestHeaderRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestHeaderRepositoryImpl._();
    }
    return _this;
  }
  _RequestHeaderRepositoryImpl._();
}

