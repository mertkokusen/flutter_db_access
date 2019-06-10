import 'package:database_access_layer/Entities/agent.dart';
import 'base_provider.dart';

part 'agent_repository.gen.dart';

abstract class AgentRepository extends _AgentRepositoryGenerated {
  factory AgentRepository() = _AgentRepositoryImpl;
  Future<Agent> retrieveByIdUser(int idUser);
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

  Future<Agent> retrieveByIdUser(int idUser) async {
    var sql = " SELECT * FROM CUS_AGENT WHERE ID_USER = ? ";
    return  await this.rawQueryMappedSingle(sql, [idUser]);
  }
}
