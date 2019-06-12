import 'package:database_access_layer/entities/cus/dealer.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/dealer_repository.gen.dart';

abstract class DealerRepository extends _DealerRepositoryGenerated {
  factory DealerRepository() = _DealerRepositoryImpl;
}

class _DealerRepositoryImpl extends _DealerRepositoryGeneratedImpl
    implements DealerRepository {
  static _DealerRepositoryImpl _this;
  factory _DealerRepositoryImpl() {
    if (_this == null) {
      _this = new _DealerRepositoryImpl._();
    }
    return _this;
  }
  _DealerRepositoryImpl._();
}

