import 'package:database_access_layer/Entities/cus_channel.gen.dart';
import 'base_provider.dart';

abstract class _CusChannelRepositoryGenerated {
  Future<CusChannel> getInstance(int idAgent);
  Future<bool> save(CusChannel agent);
  Future<List<CusChannel>> retrieveAll();
}

class _CusChannelRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusChannelRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CHANNEL";
  static const String _primaryKey = "ID_CHANNEL";

  _CusChannelRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusChannel> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusChannel.fromMap(map);
  }

  Future<List<CusChannel>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusChannel.fromMap(f)).toList();
  }

  Future<CusChannel> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusChannel.fromMap(f)).first : CusChannel();
  }

  Future<Iterable<CusChannel>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusChannel.fromMap(f));
  }
Future<bool> save(CusChannel model) async {
    bool result;
    if (model.idChannel == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idChannel = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idChannel.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusChannelRepository extends _CusChannelRepositoryGenerated {
  factory CusChannelRepository() = _CusChannelRepositoryImpl;
}

class _CusChannelRepositoryImpl extends _CusChannelRepositoryGeneratedImpl
    implements CusChannelRepository {
  static _CusChannelRepositoryImpl _this;
  factory _CusChannelRepositoryImpl() {
    if (_this == null) {
      _this = new _CusChannelRepositoryImpl._();
    }
    return _this;
  }
  _CusChannelRepositoryImpl._();
}
*/
