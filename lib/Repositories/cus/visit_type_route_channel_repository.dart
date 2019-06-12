import 'package:database_access_layer/entities/cus/visit_type_route_channel.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/visit_type_route_channel_repository.gen.dart';

abstract class VisitTypeRouteChannelRepository extends _VisitTypeRouteChannelRepositoryGenerated {
  factory VisitTypeRouteChannelRepository() = _VisitTypeRouteChannelRepositoryImpl;
}

class _VisitTypeRouteChannelRepositoryImpl extends _VisitTypeRouteChannelRepositoryGeneratedImpl
    implements VisitTypeRouteChannelRepository {
  static _VisitTypeRouteChannelRepositoryImpl _this;
  factory _VisitTypeRouteChannelRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitTypeRouteChannelRepositoryImpl._();
    }
    return _this;
  }
  _VisitTypeRouteChannelRepositoryImpl._();
}

