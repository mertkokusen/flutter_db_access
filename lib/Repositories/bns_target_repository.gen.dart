import 'package:database_access_layer/Entities/bns_target.gen.dart';
import 'base_provider.dart';

abstract class _BnsTargetRepositoryGenerated {
  Future<BnsTarget> getInstance(int idAgent);
  Future<bool> save(BnsTarget agent);
  Future<List<BnsTarget>> retrieveAll();
}

class _BnsTargetRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _BnsTargetRepositoryGeneratedImpl _this;
  static const String _tableName = "BNS_TARGET";
  static const String _primaryKey = "ID_TARGET";

  _BnsTargetRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<BnsTarget> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return BnsTarget.fromMap(map);
  }

  Future<List<BnsTarget>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => BnsTarget.fromMap(f)).toList();
  }

  Future<BnsTarget> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => BnsTarget.fromMap(f)).first : BnsTarget();
  }

  Future<Iterable<BnsTarget>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => BnsTarget.fromMap(f));
  }
Future<bool> save(BnsTarget model) async {
    bool result;
    if (model.idTarget == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTarget = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTarget.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class BnsTargetRepository extends _BnsTargetRepositoryGenerated {
  factory BnsTargetRepository() = _BnsTargetRepositoryImpl;
}

class _BnsTargetRepositoryImpl extends _BnsTargetRepositoryGeneratedImpl
    implements BnsTargetRepository {
  static _BnsTargetRepositoryImpl _this;
  factory _BnsTargetRepositoryImpl() {
    if (_this == null) {
      _this = new _BnsTargetRepositoryImpl._();
    }
    return _this;
  }
  _BnsTargetRepositoryImpl._();
}
*/
