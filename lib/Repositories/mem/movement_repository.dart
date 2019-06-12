import 'package:database_access_layer/entities/mem/movement.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/movement_repository.gen.dart';

abstract class MovementRepository extends _MovementRepositoryGenerated {
  factory MovementRepository() = _MovementRepositoryImpl;
}

class _MovementRepositoryImpl extends _MovementRepositoryGeneratedImpl
    implements MovementRepository {
  static _MovementRepositoryImpl _this;
  factory _MovementRepositoryImpl() {
    if (_this == null) {
      _this = new _MovementRepositoryImpl._();
    }
    return _this;
  }
  _MovementRepositoryImpl._();
}

