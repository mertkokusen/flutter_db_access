
part of '../../repositories/cus/contract_repository.dart';

abstract class _ContractRepositoryGenerated {
  Future<Contract> getInstance(int idAgent);
  Future<List<Contract>> retrieveAll();

 Future<bool> save(Contract agent);
}
class _ContractRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ContractRepositoryGeneratedImpl _this;
  static const String _tableName = "CONTRACT";
  static const String _primaryKey = "ID_CONTRACT";

  _ContractRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Contract> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Contract.fromMap(map);
  }

  Future<List<Contract>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Contract.fromMap(f)).toList();
  }

  Future<Contract> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Contract.fromMap(f)).first : Contract();
  }

  Future<Iterable<Contract>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Contract.fromMap(f));
  }
Future<bool> save(Contract model) async {
    bool result;
    if (model.idContract == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idContract = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idContract.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class ContractRepository extends _ContractRepositoryGenerated {
  factory ContractRepository() = _ContractRepositoryImpl;
}

class _ContractRepositoryImpl extends _ContractRepositoryGeneratedImpl
    implements ContractRepository {
  static _ContractRepositoryImpl _this;
  factory _ContractRepositoryImpl() {
    if (_this == null) {
      _this = new _ContractRepositoryImpl._();
    }
    return _this;
  }
  _ContractRepositoryImpl._();
}
*/
