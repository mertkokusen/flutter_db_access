
part of '../../repositories/cus/contract_assortment_list_repository.dart';

abstract class _ContractAssortmentListRepositoryGenerated {
  Future<ContractAssortmentList> getInstance(int idAgent);
  Future<List<ContractAssortmentList>> retrieveAll();

 Future<bool> save(ContractAssortmentList agent);
}
class _ContractAssortmentListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ContractAssortmentListRepositoryGeneratedImpl _this;
  static const String _tableName = "CONTRACT_ASSORTMENT_LIST";
  static const String _primaryKey = "ID_CONTRACT_ASSORTMENT_LIST";

  _ContractAssortmentListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<ContractAssortmentList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ContractAssortmentList.fromMap(map);
  }

  Future<List<ContractAssortmentList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ContractAssortmentList.fromMap(f)).toList();
  }

  Future<ContractAssortmentList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ContractAssortmentList.fromMap(f)).first : ContractAssortmentList();
  }

  Future<Iterable<ContractAssortmentList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ContractAssortmentList.fromMap(f));
  }
Future<bool> save(ContractAssortmentList model) async {
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
abstract class ContractAssortmentListRepository extends _ContractAssortmentListRepositoryGenerated {
  factory ContractAssortmentListRepository() = _ContractAssortmentListRepositoryImpl;
}

class _ContractAssortmentListRepositoryImpl extends _ContractAssortmentListRepositoryGeneratedImpl
    implements ContractAssortmentListRepository {
  static _ContractAssortmentListRepositoryImpl _this;
  factory _ContractAssortmentListRepositoryImpl() {
    if (_this == null) {
      _this = new _ContractAssortmentListRepositoryImpl._();
    }
    return _this;
  }
  _ContractAssortmentListRepositoryImpl._();
}
*/
