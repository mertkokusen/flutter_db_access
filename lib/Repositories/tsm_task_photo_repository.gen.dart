import 'package:database_access_layer/Entities/tsm_task_photo.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskPhotoRepositoryGenerated {
  Future<TsmTaskPhoto> getInstance(int idAgent);
  Future<bool> save(TsmTaskPhoto agent);
  Future<List<TsmTaskPhoto>> retrieveAll();
}

class _TsmTaskPhotoRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskPhotoRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_PHOTO";
  static const String _primaryKey = "ID_TASK_PHOTO";

  _TsmTaskPhotoRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskPhoto> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskPhoto.fromMap(map);
  }

  Future<List<TsmTaskPhoto>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskPhoto.fromMap(f)).toList();
  }

  Future<TsmTaskPhoto> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskPhoto.fromMap(f)).first : TsmTaskPhoto();
  }

  Future<Iterable<TsmTaskPhoto>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskPhoto.fromMap(f));
  }
Future<bool> save(TsmTaskPhoto model) async {
    bool result;
    if (model.idTaskPhoto == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskPhoto = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskPhoto.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskPhotoRepository extends _TsmTaskPhotoRepositoryGenerated {
  factory TsmTaskPhotoRepository() = _TsmTaskPhotoRepositoryImpl;
}

class _TsmTaskPhotoRepositoryImpl extends _TsmTaskPhotoRepositoryGeneratedImpl
    implements TsmTaskPhotoRepository {
  static _TsmTaskPhotoRepositoryImpl _this;
  factory _TsmTaskPhotoRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskPhotoRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskPhotoRepositoryImpl._();
}
*/
