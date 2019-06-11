import 'package:database_access_layer/Entities/prd_assortment_list.gen.dart';
import 'base_provider.dart';

abstract class _PrdAssortmentListRepositoryGenerated {
  Future<PrdAssortmentList> getInstance(int idAgent);
  Future<bool> save(PrdAssortmentList agent);
  Future<List<PrdAssortmentList>> retrieveAll();
}

class _PrdAssortmentListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdAssortmentListRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_ASSORTMENT_LIST";
  static const String _primaryKey = "ID_ASSORTMENT_LIST";

  _PrdAssortmentListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdAssortmentList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdAssortmentList.fromMap(map);
  }

  Future<List<PrdAssortmentList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdAssortmentList.fromMap(f)).toList();
  }

  Future<PrdAssortmentList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdAssortmentList.fromMap(f)).first : PrdAssortmentList();
  }

  Future<Iterable<PrdAssortmentList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdAssortmentList.fromMap(f));
  }
Future<bool> save(PrdAssortmentList model) async {
    bool result;
    if (model.idAssortmentList == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAssortmentList = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAssortmentList.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdAssortmentListRepository extends _PrdAssortmentListRepositoryGenerated {
  factory PrdAssortmentListRepository() = _PrdAssortmentListRepositoryImpl;
}

class _PrdAssortmentListRepositoryImpl extends _PrdAssortmentListRepositoryGeneratedImpl
    implements PrdAssortmentListRepository {
  static _PrdAssortmentListRepositoryImpl _this;
  factory _PrdAssortmentListRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdAssortmentListRepositoryImpl._();
    }
    return _this;
  }
  _PrdAssortmentListRepositoryImpl._();
}
*/
