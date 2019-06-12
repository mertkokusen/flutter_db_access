import 'package:database_access_layer/entities/csh/task.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/csh/task_repository.gen.dart';

abstract class TaskRepository extends _TaskRepositoryGenerated {
  factory TaskRepository() = _TaskRepositoryImpl;
}

class _TaskRepositoryImpl extends _TaskRepositoryGeneratedImpl
    implements TaskRepository {
  static _TaskRepositoryImpl _this;
  factory _TaskRepositoryImpl() {
    if (_this == null) {
      _this = new _TaskRepositoryImpl._();
    }
    return _this;
  }
  _TaskRepositoryImpl._();
}

