import 'package:database_access_layer/Entities/prd_favorite_detail.gen.dart';
import 'base_provider.dart';

abstract class _PrdFavoriteDetailRepositoryGenerated {
  Future<PrdFavoriteDetail> getInstance(int idAgent);
  Future<bool> save(PrdFavoriteDetail agent);
  Future<List<PrdFavoriteDetail>> retrieveAll();
}

class _PrdFavoriteDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdFavoriteDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_FAVORITE_DETAIL";
  static const String _primaryKey = "ID_FAVORITE_DETAIL";

  _PrdFavoriteDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdFavoriteDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdFavoriteDetail.fromMap(map);
  }

  Future<List<PrdFavoriteDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdFavoriteDetail.fromMap(f)).toList();
  }

  Future<PrdFavoriteDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdFavoriteDetail.fromMap(f)).first : PrdFavoriteDetail();
  }

  Future<Iterable<PrdFavoriteDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdFavoriteDetail.fromMap(f));
  }
Future<bool> save(PrdFavoriteDetail model) async {
    bool result;
    if (model.idFavoriteDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idFavoriteDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idFavoriteDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdFavoriteDetailRepository extends _PrdFavoriteDetailRepositoryGenerated {
  factory PrdFavoriteDetailRepository() = _PrdFavoriteDetailRepositoryImpl;
}

class _PrdFavoriteDetailRepositoryImpl extends _PrdFavoriteDetailRepositoryGeneratedImpl
    implements PrdFavoriteDetailRepository {
  static _PrdFavoriteDetailRepositoryImpl _this;
  factory _PrdFavoriteDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdFavoriteDetailRepositoryImpl._();
    }
    return _this;
  }
  _PrdFavoriteDetailRepositoryImpl._();
}
*/
