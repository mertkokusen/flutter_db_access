import 'package:database_access_layer/Entities/int_product_dealer_code.gen.dart';
import 'base_provider.dart';

abstract class _IntProductDealerCodeRepositoryGenerated {
  Future<IntProductDealerCode> getInstance(int idAgent);
  Future<bool> save(IntProductDealerCode agent);
  Future<List<IntProductDealerCode>> retrieveAll();
}

class _IntProductDealerCodeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _IntProductDealerCodeRepositoryGeneratedImpl _this;
  static const String _tableName = "INT_PRODUCT_DEALER_CODE";
  static const String _primaryKey = "ID_PRODUCT_DEALER_CODE";

  _IntProductDealerCodeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<IntProductDealerCode> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return IntProductDealerCode.fromMap(map);
  }

  Future<List<IntProductDealerCode>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => IntProductDealerCode.fromMap(f)).toList();
  }

  Future<IntProductDealerCode> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => IntProductDealerCode.fromMap(f)).first : IntProductDealerCode();
  }

  Future<Iterable<IntProductDealerCode>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => IntProductDealerCode.fromMap(f));
  }
Future<bool> save(IntProductDealerCode model) async {
    bool result;
    if (model.idProductDealerCode == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductDealerCode = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductDealerCode.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class IntProductDealerCodeRepository extends _IntProductDealerCodeRepositoryGenerated {
  factory IntProductDealerCodeRepository() = _IntProductDealerCodeRepositoryImpl;
}

class _IntProductDealerCodeRepositoryImpl extends _IntProductDealerCodeRepositoryGeneratedImpl
    implements IntProductDealerCodeRepository {
  static _IntProductDealerCodeRepositoryImpl _this;
  factory _IntProductDealerCodeRepositoryImpl() {
    if (_this == null) {
      _this = new _IntProductDealerCodeRepositoryImpl._();
    }
    return _this;
  }
  _IntProductDealerCodeRepositoryImpl._();
}
*/
