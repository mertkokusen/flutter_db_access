import 'package:database_access_layer/generated_entity/cus/route_business_type_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/route_business_type_detail_repository.gen.dart';

abstract class RouteBusinessTypeDetailRepository extends _RouteBusinessTypeDetailRepositoryGenerated {
  factory RouteBusinessTypeDetailRepository() = _RouteBusinessTypeDetailRepositoryImpl;
}

class _RouteBusinessTypeDetailRepositoryImpl extends _RouteBusinessTypeDetailRepositoryGeneratedImpl
    implements RouteBusinessTypeDetailRepository {
  static _RouteBusinessTypeDetailRepositoryImpl _this;
  factory _RouteBusinessTypeDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _RouteBusinessTypeDetailRepositoryImpl._();
    }
    return _this;
  }
  _RouteBusinessTypeDetailRepositoryImpl._();
}

