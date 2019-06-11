import 'package:database_access_layer/Entities/prd_price_list.gen.dart';
import 'base_provider.dart';

abstract class _PrdPriceListRepositoryGenerated {
  Future<PrdPriceList> getInstance(int idAgent);
  Future<bool> save(PrdPriceList agent);
  Future<List<PrdPriceList>> retrieveAll();
}

class _PrdPriceListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdPriceListRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRICE_LIST";
  static const String _primaryKey = "ID_PRICE_LIST";

  _PrdPriceListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdPriceList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdPriceList.fromMap(map);
  }

  Future<List<PrdPriceList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdPriceList.fromMap(f)).toList();
  }

  Future<PrdPriceList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdPriceList.fromMap(f)).first : PrdPriceList();
  }

  Future<Iterable<PrdPriceList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdPriceList.fromMap(f));
  }
Future<bool> save(PrdPriceList model) async {
    bool result;
    if (model.idPriceList == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPriceList = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPriceList.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdPriceListRepository extends _PrdPriceListRepositoryGenerated {
  factory PrdPriceListRepository() = _PrdPriceListRepositoryImpl;
}

class _PrdPriceListRepositoryImpl extends _PrdPriceListRepositoryGeneratedImpl
    implements PrdPriceListRepository {
  static _PrdPriceListRepositoryImpl _this;
  factory _PrdPriceListRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdPriceListRepositoryImpl._();
    }
    return _this;
  }
  _PrdPriceListRepositoryImpl._();
}
*/
