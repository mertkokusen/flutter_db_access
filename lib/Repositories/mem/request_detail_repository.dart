import 'package:database_access_layer/entities/mem/request_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/request_detail_repository.gen.dart';

abstract class RequestDetailRepository extends _RequestDetailRepositoryGenerated {
  factory RequestDetailRepository() = _RequestDetailRepositoryImpl;
}

class _RequestDetailRepositoryImpl extends _RequestDetailRepositoryGeneratedImpl
    implements RequestDetailRepository {
  static _RequestDetailRepositoryImpl _this;
  factory _RequestDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestDetailRepositoryImpl._();
    }
    return _this;
  }
  _RequestDetailRepositoryImpl._();
}

