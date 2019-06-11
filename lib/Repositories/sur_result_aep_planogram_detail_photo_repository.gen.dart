import 'package:database_access_layer/Entities/sur_result_aep_planogram_detail_photo.gen.dart';
import 'base_provider.dart';

abstract class _SurResultAepPlanogramDetailPhotoRepositoryGenerated {
  Future<SurResultAepPlanogramDetailPhoto> getInstance(int idAgent);
  Future<bool> save(SurResultAepPlanogramDetailPhoto agent);
  Future<List<SurResultAepPlanogramDetailPhoto>> retrieveAll();
}

class _SurResultAepPlanogramDetailPhotoRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultAepPlanogramDetailPhotoRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_AEP_PLANOGRAM_DETAIL_PHOTO";
  static const String _primaryKey = "ID_RESULT_AEP_PLANOGRAM_DETAIL_PHOTO";

  _SurResultAepPlanogramDetailPhotoRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultAepPlanogramDetailPhoto> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultAepPlanogramDetailPhoto.fromMap(map);
  }

  Future<List<SurResultAepPlanogramDetailPhoto>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultAepPlanogramDetailPhoto.fromMap(f)).toList();
  }

  Future<SurResultAepPlanogramDetailPhoto> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultAepPlanogramDetailPhoto.fromMap(f)).first : SurResultAepPlanogramDetailPhoto();
  }

  Future<Iterable<SurResultAepPlanogramDetailPhoto>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultAepPlanogramDetailPhoto.fromMap(f));
  }
Future<bool> save(SurResultAepPlanogramDetailPhoto model) async {
    bool result;
    if (model.idResultAepPlanogramDetailPhoto == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultAepPlanogramDetailPhoto = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultAepPlanogramDetailPhoto.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultAepPlanogramDetailPhotoRepository extends _SurResultAepPlanogramDetailPhotoRepositoryGenerated {
  factory SurResultAepPlanogramDetailPhotoRepository() = _SurResultAepPlanogramDetailPhotoRepositoryImpl;
}

class _SurResultAepPlanogramDetailPhotoRepositoryImpl extends _SurResultAepPlanogramDetailPhotoRepositoryGeneratedImpl
    implements SurResultAepPlanogramDetailPhotoRepository {
  static _SurResultAepPlanogramDetailPhotoRepositoryImpl _this;
  factory _SurResultAepPlanogramDetailPhotoRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultAepPlanogramDetailPhotoRepositoryImpl._();
    }
    return _this;
  }
  _SurResultAepPlanogramDetailPhotoRepositoryImpl._();
}
*/
