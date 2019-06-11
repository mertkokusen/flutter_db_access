import 'package:database_access_layer/Entities/vdo_data_type.gen.dart';
import 'base_provider.dart';

abstract class _VdoDataTypeRepositoryGenerated {
  Future<VdoDataType> getInstance(int idAgent);
  Future<bool> save(VdoDataType agent);
  Future<List<VdoDataType>> retrieveAll();
}

class _VdoDataTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoDataTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_DATA_TYPE";
  static const String _primaryKey = "ID_DATA_TYPE";

  _VdoDataTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoDataType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoDataType.fromMap(map);
  }

  Future<List<VdoDataType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoDataType.fromMap(f)).toList();
  }

  Future<VdoDataType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoDataType.fromMap(f)).first : VdoDataType();
  }

  Future<Iterable<VdoDataType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoDataType.fromMap(f));
  }
Future<bool> save(VdoDataType model) async {
    bool result;
    if (model.idDataType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idDataType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idDataType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VdoDataTypeRepository extends _VdoDataTypeRepositoryGenerated {
  factory VdoDataTypeRepository() = _VdoDataTypeRepositoryImpl;
}

class _VdoDataTypeRepositoryImpl extends _VdoDataTypeRepositoryGeneratedImpl
    implements VdoDataTypeRepository {
  static _VdoDataTypeRepositoryImpl _this;
  factory _VdoDataTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoDataTypeRepositoryImpl._();
    }
    return _this;
  }
  _VdoDataTypeRepositoryImpl._();
}
*/
