import 'package:database_access_layer/Entities/cus_contract_assortment_list.gen.dart';
import 'base_provider.dart';

abstract class _CusContractAssortmentListRepositoryGenerated {
  Future<CusContractAssortmentList> getInstance(int idAgent);
  Future<bool> save(CusContractAssortmentList agent);
  Future<List<CusContractAssortmentList>> retrieveAll();
}

class _CusContractAssortmentListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusContractAssortmentListRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CONTRACT_ASSORTMENT_LIST";
  static const String _primaryKey = "ID_CONTRACT_ASSORTMENT_LIST";

  _CusContractAssortmentListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusContractAssortmentList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusContractAssortmentList.fromMap(map);
  }

  Future<List<CusContractAssortmentList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusContractAssortmentList.fromMap(f)).toList();
  }

  Future<CusContractAssortmentList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusContractAssortmentList.fromMap(f)).first : CusContractAssortmentList();
  }

  Future<Iterable<CusContractAssortmentList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusContractAssortmentList.fromMap(f));
  }
Future<bool> save(CusContractAssortmentList model) async {
    bool result;
    if (model.idContractAssortmentList == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idContractAssortmentList = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idContractAssortmentList.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusContractAssortmentListRepository extends _CusContractAssortmentListRepositoryGenerated {
  factory CusContractAssortmentListRepository() = _CusContractAssortmentListRepositoryImpl;
}

class _CusContractAssortmentListRepositoryImpl extends _CusContractAssortmentListRepositoryGeneratedImpl
    implements CusContractAssortmentListRepository {
  static _CusContractAssortmentListRepositoryImpl _this;
  factory _CusContractAssortmentListRepositoryImpl() {
    if (_this == null) {
      _this = new _CusContractAssortmentListRepositoryImpl._();
    }
    return _this;
  }
  _CusContractAssortmentListRepositoryImpl._();
}
*/
