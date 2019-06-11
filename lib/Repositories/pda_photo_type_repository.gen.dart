import 'package:database_access_layer/Entities/pda_photo_type.gen.dart';
import 'base_provider.dart';

abstract class _PdaPhotoTypeRepositoryGenerated {
  Future<PdaPhotoType> getInstance(int idAgent);
  Future<bool> save(PdaPhotoType agent);
  Future<List<PdaPhotoType>> retrieveAll();
}

class _PdaPhotoTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaPhotoTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_PHOTO_TYPE";
  static const String _primaryKey = "ID_PHOTO_TYPE";

  _PdaPhotoTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaPhotoType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaPhotoType.fromMap(map);
  }

  Future<List<PdaPhotoType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaPhotoType.fromMap(f)).toList();
  }

  Future<PdaPhotoType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaPhotoType.fromMap(f)).first : PdaPhotoType();
  }

  Future<Iterable<PdaPhotoType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaPhotoType.fromMap(f));
  }
Future<bool> save(PdaPhotoType model) async {
    bool result;
    if (model.idPhotoType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPhotoType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPhotoType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaPhotoTypeRepository extends _PdaPhotoTypeRepositoryGenerated {
  factory PdaPhotoTypeRepository() = _PdaPhotoTypeRepositoryImpl;
}

class _PdaPhotoTypeRepositoryImpl extends _PdaPhotoTypeRepositoryGeneratedImpl
    implements PdaPhotoTypeRepository {
  static _PdaPhotoTypeRepositoryImpl _this;
  factory _PdaPhotoTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaPhotoTypeRepositoryImpl._();
    }
    return _this;
  }
  _PdaPhotoTypeRepositoryImpl._();
}
*/
