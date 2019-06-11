import 'package:database_access_layer/Entities/cus_dealer.gen.dart';
import 'base_provider.dart';

abstract class _CusDealerRepositoryGenerated {
  Future<CusDealer> getInstance(int idAgent);
  Future<bool> save(CusDealer agent);
  Future<List<CusDealer>> retrieveAll();
}

class _CusDealerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusDealerRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_DEALER";
  static const String _primaryKey = "ID_DEALER";

  _CusDealerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusDealer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusDealer.fromMap(map);
  }

  Future<List<CusDealer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusDealer.fromMap(f)).toList();
  }

  Future<CusDealer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusDealer.fromMap(f)).first : CusDealer();
  }

  Future<Iterable<CusDealer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusDealer.fromMap(f));
  }
Future<bool> save(CusDealer model) async {
    bool result;
    if (model.idDealer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idDealer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idDealer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusDealerRepository extends _CusDealerRepositoryGenerated {
  factory CusDealerRepository() = _CusDealerRepositoryImpl;
}

class _CusDealerRepositoryImpl extends _CusDealerRepositoryGeneratedImpl
    implements CusDealerRepository {
  static _CusDealerRepositoryImpl _this;
  factory _CusDealerRepositoryImpl() {
    if (_this == null) {
      _this = new _CusDealerRepositoryImpl._();
    }
    return _this;
  }
  _CusDealerRepositoryImpl._();
}
*/
