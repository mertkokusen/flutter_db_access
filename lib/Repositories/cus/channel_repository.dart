import 'package:database_access_layer/entities/cus/channel.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/channel_repository.gen.dart';

abstract class ChannelRepository extends _ChannelRepositoryGenerated {
  factory ChannelRepository() = _ChannelRepositoryImpl;
}

class _ChannelRepositoryImpl extends _ChannelRepositoryGeneratedImpl
    implements ChannelRepository {
  static _ChannelRepositoryImpl _this;
  factory _ChannelRepositoryImpl() {
    if (_this == null) {
      _this = new _ChannelRepositoryImpl._();
    }
    return _this;
  }
  _ChannelRepositoryImpl._();
}

