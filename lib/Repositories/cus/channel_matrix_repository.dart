import 'package:database_access_layer/entities/cus/channel_matrix.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/channel_matrix_repository.gen.dart';

abstract class ChannelMatrixRepository extends _ChannelMatrixRepositoryGenerated {
  factory ChannelMatrixRepository() = _ChannelMatrixRepositoryImpl;
}

class _ChannelMatrixRepositoryImpl extends _ChannelMatrixRepositoryGeneratedImpl
    implements ChannelMatrixRepository {
  static _ChannelMatrixRepositoryImpl _this;
  factory _ChannelMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _ChannelMatrixRepositoryImpl._();
    }
    return _this;
  }
  _ChannelMatrixRepositoryImpl._();
}

