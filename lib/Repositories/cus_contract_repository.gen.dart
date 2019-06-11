import 'package:database_access_layer/Entities/cus_contract.gen.dart';
import 'base_provider.dart';

abstract class _CusContractRepositoryGenerated {
  Future<CusContract> getInstance(int idAgent);
  Future<bool> save(CusContract agent);
  Future<List<CusContract>> retrieveAll();
}

class _CusContractRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusContractRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CONTRACT";
  static const String _primaryKey = "ID_CONTRACT";

  _CusContractRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusContract> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusContract.fromMap(map);
  }

  Future<List<CusContract>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusContract.fromMap(f)).toList();
  }

  Future<CusContract> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusContract.fromMap(f)).first : CusContract();
  }

  Future<Iterable<CusContract>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusContract.fromMap(f));
  }
Future<bool> save(CusContract model) async {
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
abstract class CusContractRepository extends _CusContractRepositoryGenerated {
  factory CusContractRepository() = _CusContractRepositoryImpl;
}

class _CusContractRepositoryImpl extends _CusContractRepositoryGeneratedImpl
    implements CusContractRepository {
  static _CusContractRepositoryImpl _this;
  factory _CusContractRepositoryImpl() {
    if (_this == null) {
      _this = new _CusContractRepositoryImpl._();
    }
    return _this;
  }
  _CusContractRepositoryImpl._();
}
*/
