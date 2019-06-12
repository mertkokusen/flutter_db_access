import 'package:database_access_layer/entities/cus/agent.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/agent_repository.gen.dart';

abstract class AgentRepository extends _AgentRepositoryGenerated {
  factory AgentRepository() = _AgentRepositoryImpl;
}

class _AgentRepositoryImpl extends _AgentRepositoryGeneratedImpl
    implements AgentRepository {
  static _AgentRepositoryImpl _this;
  factory _AgentRepositoryImpl() {
    if (_this == null) {
      _this = new _AgentRepositoryImpl._();
    }
    return _this;
  }
  _AgentRepositoryImpl._();
}

