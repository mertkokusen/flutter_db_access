import 'package:database_access_layer/generated_entity/cus/other_route.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/other_route_repository.gen.dart';

abstract class OtherRouteRepository extends _OtherRouteRepositoryGenerated {
  factory OtherRouteRepository() = _OtherRouteRepositoryImpl;
}

class _OtherRouteRepositoryImpl extends _OtherRouteRepositoryGeneratedImpl
    implements OtherRouteRepository {
  static _OtherRouteRepositoryImpl _this;
  factory _OtherRouteRepositoryImpl() {
    if (_this == null) {
      _this = new _OtherRouteRepositoryImpl._();
    }
    return _this;
  }
  _OtherRouteRepositoryImpl._();
}

