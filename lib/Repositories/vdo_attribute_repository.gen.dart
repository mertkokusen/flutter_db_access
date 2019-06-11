import 'package:database_access_layer/Entities/vdo_attribute.gen.dart';
import 'base_provider.dart';

abstract class _VdoAttributeRepositoryGenerated {
  Future<VdoAttribute> getInstance(int idAgent);
  Future<bool> save(VdoAttribute agent);
  Future<List<VdoAttribute>> retrieveAll();
}

class _VdoAttributeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoAttributeRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_ATTRIBUTE";
  static const String _primaryKey = "ID_ATTRIBUTE";

  _VdoAttributeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoAttribute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoAttribute.fromMap(map);
  }

  Future<List<VdoAttribute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoAttribute.fromMap(f)).toList();
  }

  Future<VdoAttribute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoAttribute.fromMap(f)).first : VdoAttribute();
  }

  Future<Iterable<VdoAttribute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoAttribute.fromMap(f));
  }
Future<bool> save(VdoAttribute model) async {
    bool result;
    if (model.idAttribute == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAttribute = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAttribute.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VdoAttributeRepository extends _VdoAttributeRepositoryGenerated {
  factory VdoAttributeRepository() = _VdoAttributeRepositoryImpl;
}

class _VdoAttributeRepositoryImpl extends _VdoAttributeRepositoryGeneratedImpl
    implements VdoAttributeRepository {
  static _VdoAttributeRepositoryImpl _this;
  factory _VdoAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoAttributeRepositoryImpl._();
    }
    return _this;
  }
  _VdoAttributeRepositoryImpl._();
}
*/
