
part of '../../repositories/cus/channel_matrix_repository.dart';

abstract class _ChannelMatrixRepositoryGenerated {
  Future<ChannelMatrix> getInstance(int idAgent);
  Future<List<ChannelMatrix>> retrieveAll();

 Future<bool> save(ChannelMatrix agent);
}
class _ChannelMatrixRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ChannelMatrixRepositoryGeneratedImpl _this;
  static const String _tableName = "CHANNEL_MATRIX";
  static const String _primaryKey = "ID_CHANNEL_MATRIX";

  _ChannelMatrixRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<ChannelMatrix> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ChannelMatrix.fromMap(map);
  }

  Future<List<ChannelMatrix>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ChannelMatrix.fromMap(f)).toList();
  }

  Future<ChannelMatrix> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ChannelMatrix.fromMap(f)).first : ChannelMatrix();
  }

  Future<Iterable<ChannelMatrix>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ChannelMatrix.fromMap(f));
  }
Future<bool> save(ChannelMatrix model) async {
    bool result;
    if (model.idChannelMatrix == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idChannelMatrix = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idChannelMatrix.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class ChannelMatrixRepository extends _ChannelMatrixRepositoryGenerated {
  factory ChannelMatrixRepository() = _ChannelMatrixRepositoryImpl;
}

class _ChannelMatrixRepositoryImpl extends _ChannelMatrixRepositoryGeneratedImpl
    implements ChannelMatrixRepository {
  static _ChannelMatrixRepositoryImpl _this;
  factory _ChannelMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _ChannelMatrixRepositoryImpl._();
    }
    return _this;
  }
  _ChannelMatrixRepositoryImpl._();
}
*/
