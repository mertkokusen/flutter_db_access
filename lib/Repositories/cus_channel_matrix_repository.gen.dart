import 'package:database_access_layer/Entities/cus_channel_matrix.gen.dart';
import 'base_provider.dart';

abstract class _CusChannelMatrixRepositoryGenerated {
  Future<CusChannelMatrix> getInstance(int idAgent);
  Future<bool> save(CusChannelMatrix agent);
  Future<List<CusChannelMatrix>> retrieveAll();
}

class _CusChannelMatrixRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusChannelMatrixRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CHANNEL_MATRIX";
  static const String _primaryKey = "ID_CHANNEL_MATRIX";

  _CusChannelMatrixRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusChannelMatrix> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusChannelMatrix.fromMap(map);
  }

  Future<List<CusChannelMatrix>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusChannelMatrix.fromMap(f)).toList();
  }

  Future<CusChannelMatrix> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusChannelMatrix.fromMap(f)).first : CusChannelMatrix();
  }

  Future<Iterable<CusChannelMatrix>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusChannelMatrix.fromMap(f));
  }
Future<bool> save(CusChannelMatrix model) async {
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
abstract class CusChannelMatrixRepository extends _CusChannelMatrixRepositoryGenerated {
  factory CusChannelMatrixRepository() = _CusChannelMatrixRepositoryImpl;
}

class _CusChannelMatrixRepositoryImpl extends _CusChannelMatrixRepositoryGeneratedImpl
    implements CusChannelMatrixRepository {
  static _CusChannelMatrixRepositoryImpl _this;
  factory _CusChannelMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _CusChannelMatrixRepositoryImpl._();
    }
    return _this;
  }
  _CusChannelMatrixRepositoryImpl._();
}
*/
