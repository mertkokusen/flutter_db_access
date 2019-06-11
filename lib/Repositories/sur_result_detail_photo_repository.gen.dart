import 'package:database_access_layer/Entities/sur_result_detail_photo.gen.dart';
import 'base_provider.dart';

abstract class _SurResultDetailPhotoRepositoryGenerated {
  Future<SurResultDetailPhoto> getInstance(int idAgent);
  Future<bool> save(SurResultDetailPhoto agent);
  Future<List<SurResultDetailPhoto>> retrieveAll();
}

class _SurResultDetailPhotoRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultDetailPhotoRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_DETAIL_PHOTO";
  static const String _primaryKey = "ID_RESULT_DETAIL_PHOTO";

  _SurResultDetailPhotoRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultDetailPhoto> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultDetailPhoto.fromMap(map);
  }

  Future<List<SurResultDetailPhoto>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultDetailPhoto.fromMap(f)).toList();
  }

  Future<SurResultDetailPhoto> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultDetailPhoto.fromMap(f)).first : SurResultDetailPhoto();
  }

  Future<Iterable<SurResultDetailPhoto>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultDetailPhoto.fromMap(f));
  }
Future<bool> save(SurResultDetailPhoto model) async {
    bool result;
    if (model.idResultDetailPhoto == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultDetailPhoto = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultDetailPhoto.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultDetailPhotoRepository extends _SurResultDetailPhotoRepositoryGenerated {
  factory SurResultDetailPhotoRepository() = _SurResultDetailPhotoRepositoryImpl;
}

class _SurResultDetailPhotoRepositoryImpl extends _SurResultDetailPhotoRepositoryGeneratedImpl
    implements SurResultDetailPhotoRepository {
  static _SurResultDetailPhotoRepositoryImpl _this;
  factory _SurResultDetailPhotoRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultDetailPhotoRepositoryImpl._();
    }
    return _this;
  }
  _SurResultDetailPhotoRepositoryImpl._();
}
*/
