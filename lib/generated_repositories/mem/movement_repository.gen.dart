
part of '../../repositories/mem/movement_repository.dart';

abstract class _MovementRepositoryGenerated {
  Future<Movement> getInstance(int idAgent);
  Future<List<Movement>> retrieveAll();

}
class _MovementRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MovementRepositoryGeneratedImpl _this;
  static const String _tableName = "MOVEMENT";
  static const String _primaryKey = "";

  _MovementRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Movement> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Movement.fromMap(map);
  }

  Future<List<Movement>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Movement.fromMap(f)).toList();
  }

  Future<Movement> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Movement.fromMap(f)).first : Movement();
  }

  Future<Iterable<Movement>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Movement.fromMap(f));
  }
}
/*
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
*/
