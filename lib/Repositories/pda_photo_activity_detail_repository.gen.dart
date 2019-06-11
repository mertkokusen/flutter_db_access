import 'package:database_access_layer/Entities/pda_photo_activity_detail.gen.dart';
import 'base_provider.dart';

abstract class _PdaPhotoActivityDetailRepositoryGenerated {
  Future<PdaPhotoActivityDetail> getInstance(int idAgent);
  Future<bool> save(PdaPhotoActivityDetail agent);
  Future<List<PdaPhotoActivityDetail>> retrieveAll();
}

class _PdaPhotoActivityDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaPhotoActivityDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_PHOTO_ACTIVITY_DETAIL";
  static const String _primaryKey = "ID_PHOTO_ACTIVITY_DETAIL";

  _PdaPhotoActivityDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaPhotoActivityDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaPhotoActivityDetail.fromMap(map);
  }

  Future<List<PdaPhotoActivityDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaPhotoActivityDetail.fromMap(f)).toList();
  }

  Future<PdaPhotoActivityDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaPhotoActivityDetail.fromMap(f)).first : PdaPhotoActivityDetail();
  }

  Future<Iterable<PdaPhotoActivityDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaPhotoActivityDetail.fromMap(f));
  }
Future<bool> save(PdaPhotoActivityDetail model) async {
    bool result;
    if (model.idPhotoActivityDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPhotoActivityDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPhotoActivityDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaPhotoActivityDetailRepository extends _PdaPhotoActivityDetailRepositoryGenerated {
  factory PdaPhotoActivityDetailRepository() = _PdaPhotoActivityDetailRepositoryImpl;
}

class _PdaPhotoActivityDetailRepositoryImpl extends _PdaPhotoActivityDetailRepositoryGeneratedImpl
    implements PdaPhotoActivityDetailRepository {
  static _PdaPhotoActivityDetailRepositoryImpl _this;
  factory _PdaPhotoActivityDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaPhotoActivityDetailRepositoryImpl._();
    }
    return _this;
  }
  _PdaPhotoActivityDetailRepositoryImpl._();
}
*/
