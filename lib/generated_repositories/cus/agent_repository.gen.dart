
part of '../../repositories/cus/agent_repository.dart';

abstract class _AgentRepositoryGenerated {
  Future<Agent> getInstance(int idAgent);
  Future<List<Agent>> retrieveAll();

 Future<bool> save(Agent agent);
}
class _AgentRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AgentRepositoryGeneratedImpl _this;
  static const String _tableName = "AGENT";
  static const String _primaryKey = "ID_AGENT";

  _AgentRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Agent> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Agent.fromMap(map);
  }

  Future<List<Agent>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Agent.fromMap(f)).toList();
  }

  Future<Agent> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Agent.fromMap(f)).first : Agent();
  }

  Future<Iterable<Agent>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Agent.fromMap(f));
  }
Future<bool> save(Agent model) async {
    bool result;
    if (model.idAgent == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAgent = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAgent.toString(), model.toMap());
    }
    return result;
  }

}
/*
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
*/
