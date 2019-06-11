import 'package:database_access_layer/Entities/vdo_transaction_attribute.gen.dart';
import 'base_provider.dart';

abstract class _VdoTransactionAttributeRepositoryGenerated {
  Future<VdoTransactionAttribute> getInstance(int idAgent);
  Future<bool> save(VdoTransactionAttribute agent);
  Future<List<VdoTransactionAttribute>> retrieveAll();
}

class _VdoTransactionAttributeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoTransactionAttributeRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_TRANSACTION_ATTRIBUTE";
  static const String _primaryKey = "ID_TRANSACTION_ATTRIBUTE";

  _VdoTransactionAttributeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoTransactionAttribute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoTransactionAttribute.fromMap(map);
  }

  Future<List<VdoTransactionAttribute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoTransactionAttribute.fromMap(f)).toList();
  }

  Future<VdoTransactionAttribute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoTransactionAttribute.fromMap(f)).first : VdoTransactionAttribute();
  }

  Future<Iterable<VdoTransactionAttribute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoTransactionAttribute.fromMap(f));
  }
Future<bool> save(VdoTransactionAttribute model) async {
    bool result;
    if (model.idTransactionAttribute == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTransactionAttribute = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTransactionAttribute.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VdoTransactionAttributeRepository extends _VdoTransactionAttributeRepositoryGenerated {
  factory VdoTransactionAttributeRepository() = _VdoTransactionAttributeRepositoryImpl;
}

class _VdoTransactionAttributeRepositoryImpl extends _VdoTransactionAttributeRepositoryGeneratedImpl
    implements VdoTransactionAttributeRepository {
  static _VdoTransactionAttributeRepositoryImpl _this;
  factory _VdoTransactionAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoTransactionAttributeRepositoryImpl._();
    }
    return _this;
  }
  _VdoTransactionAttributeRepositoryImpl._();
}
*/
