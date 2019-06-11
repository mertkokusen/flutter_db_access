import 'package:database_access_layer/Entities/vdo_attribute_value.gen.dart';
import 'base_provider.dart';

abstract class _VdoAttributeValueRepositoryGenerated {
  Future<VdoAttributeValue> getInstance(int idAgent);
  Future<bool> save(VdoAttributeValue agent);
  Future<List<VdoAttributeValue>> retrieveAll();
}

class _VdoAttributeValueRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoAttributeValueRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_ATTRIBUTE_VALUE";
  static const String _primaryKey = "ID_ATTRIBUTE_VALUE";

  _VdoAttributeValueRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoAttributeValue> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoAttributeValue.fromMap(map);
  }

  Future<List<VdoAttributeValue>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoAttributeValue.fromMap(f)).toList();
  }

  Future<VdoAttributeValue> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoAttributeValue.fromMap(f)).first : VdoAttributeValue();
  }

  Future<Iterable<VdoAttributeValue>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoAttributeValue.fromMap(f));
  }
Future<bool> save(VdoAttributeValue model) async {
    bool result;
    if (model.idAttributeValue == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAttributeValue = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAttributeValue.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VdoAttributeValueRepository extends _VdoAttributeValueRepositoryGenerated {
  factory VdoAttributeValueRepository() = _VdoAttributeValueRepositoryImpl;
}

class _VdoAttributeValueRepositoryImpl extends _VdoAttributeValueRepositoryGeneratedImpl
    implements VdoAttributeValueRepository {
  static _VdoAttributeValueRepositoryImpl _this;
  factory _VdoAttributeValueRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoAttributeValueRepositoryImpl._();
    }
    return _this;
  }
  _VdoAttributeValueRepositoryImpl._();
}
*/
