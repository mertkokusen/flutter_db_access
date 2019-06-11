import 'package:database_access_layer/Entities/mem_movement.gen.dart';
import 'base_provider.dart';

abstract class _MemMovementRepositoryGenerated {
  Future<MemMovement> getInstance(int idAgent);
  Future<bool> save(MemMovement agent);
  Future<List<MemMovement>> retrieveAll();
}

class _MemMovementRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemMovementRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_MOVEMENT";
  static const String _primaryKey = "";

  _MemMovementRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemMovement> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemMovement.fromMap(map);
  }

  Future<List<MemMovement>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemMovement.fromMap(f)).toList();
  }

  Future<MemMovement> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemMovement.fromMap(f)).first : MemMovement();
  }

  Future<Iterable<MemMovement>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemMovement.fromMap(f));
  }
}
/*
abstract class MemMovementRepository extends _MemMovementRepositoryGenerated {
  factory MemMovementRepository() = _MemMovementRepositoryImpl;
}

class _MemMovementRepositoryImpl extends _MemMovementRepositoryGeneratedImpl
    implements MemMovementRepository {
  static _MemMovementRepositoryImpl _this;
  factory _MemMovementRepositoryImpl() {
    if (_this == null) {
      _this = new _MemMovementRepositoryImpl._();
    }
    return _this;
  }
  _MemMovementRepositoryImpl._();
}
*/
