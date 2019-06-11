import 'package:database_access_layer/Entities/cus_agent.gen.dart';
import 'base_provider.dart';

abstract class _CusAgentRepositoryGenerated {
  Future<CusAgent> getInstance(int idAgent);
  Future<bool> save(CusAgent agent);
  Future<List<CusAgent>> retrieveAll();
}

class _CusAgentRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusAgentRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_AGENT";
  static const String _primaryKey = "ID_AGENT";

  _CusAgentRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusAgent> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusAgent.fromMap(map);
  }

  Future<List<CusAgent>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusAgent.fromMap(f)).toList();
  }

  Future<CusAgent> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusAgent.fromMap(f)).first : CusAgent();
  }

  Future<Iterable<CusAgent>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusAgent.fromMap(f));
  }

  Future<bool> save(CusAgent model) async {
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

abstract class CusAgentRepository extends _CusAgentRepositoryGenerated {
  factory CusAgentRepository() = _CusAgentRepositoryImpl;
}

class _CusAgentRepositoryImpl extends _CusAgentRepositoryGeneratedImpl implements CusAgentRepository {
  static _CusAgentRepositoryImpl _this;
  factory _CusAgentRepositoryImpl() {
    if (_this == null) {
      _this = new _CusAgentRepositoryImpl._();
    }
    return _this;
  }
  _CusAgentRepositoryImpl._();
}
