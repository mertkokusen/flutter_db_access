import 'package:database_access_layer/generated_entity/cus/route.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/route_repository.gen.dart';

abstract class RouteRepository extends _RouteRepositoryGenerated {
  factory RouteRepository() = _RouteRepositoryImpl;
}

class _RouteRepositoryImpl extends _RouteRepositoryGeneratedImpl
    implements RouteRepository {
  static _RouteRepositoryImpl _this;
  factory _RouteRepositoryImpl() {
    if (_this == null) {
      _this = new _RouteRepositoryImpl._();
    }
    return _this;
  }
  _RouteRepositoryImpl._();
}

