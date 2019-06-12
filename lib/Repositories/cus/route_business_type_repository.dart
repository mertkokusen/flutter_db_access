import 'package:database_access_layer/entities/cus/route_business_type.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/route_business_type_repository.gen.dart';

abstract class RouteBusinessTypeRepository extends _RouteBusinessTypeRepositoryGenerated {
  factory RouteBusinessTypeRepository() = _RouteBusinessTypeRepositoryImpl;
}

class _RouteBusinessTypeRepositoryImpl extends _RouteBusinessTypeRepositoryGeneratedImpl
    implements RouteBusinessTypeRepository {
  static _RouteBusinessTypeRepositoryImpl _this;
  factory _RouteBusinessTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _RouteBusinessTypeRepositoryImpl._();
    }
    return _this;
  }
  _RouteBusinessTypeRepositoryImpl._();
}

