part of 'agent_repository.dart';

abstract class _AgentRepositoryGenerated {
  Future<Agent> getInstance(int idAgent);
  Future<bool> save(Agent agent);
  Future<List<Agent>> retrieveAll();
}

class _AgentRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AgentRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_AGENT";
  static const String _primaryKey = "ID_AGENT";

  _AgentRepositoryGeneratedImpl()
      : super(table: _tableName, column: _primaryKey);

  Future<Agent> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Agent.fromDbMap(map);
  }

  Future<List<Agent>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Agent.fromDbMap(f)).toList();
  }

  Future<Agent> rawQueryMappedSingle(String sql,
      [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0
        ? result.map((f) => Agent.fromDbMap(f)).first
        : Agent();
  }

  Future<Iterable<Agent>> rawQueryMappedMany(String sql,
      [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Agent.fromDbMap(f));
  }

  Future<bool> save(Agent agent) async {
    bool result;
    if (agent.idAgent == null) {
      var id = await insertItem(agent.toDbMap());
      if (id != null) {
        //*Set auto-generated id.
        agent.idAgent = id;
        result = true;
      }
    } else {
      result = await updateItem(agent.idAgent.toString(), agent.toDbMap());
    }
    return result;
  }
}
