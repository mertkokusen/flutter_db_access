
part of '../../repositories/cus/channel_repository.dart';

abstract class _ChannelRepositoryGenerated {
  Future<Channel> getInstance(int idAgent);
  Future<List<Channel>> retrieveAll();

 Future<bool> save(Channel agent);
}
class _ChannelRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ChannelRepositoryGeneratedImpl _this;
  static const String _tableName = "CHANNEL";
  static const String _primaryKey = "ID_CHANNEL";

  _ChannelRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Channel> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Channel.fromMap(map);
  }

  Future<List<Channel>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Channel.fromMap(f)).toList();
  }

  Future<Channel> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Channel.fromMap(f)).first : Channel();
  }

  Future<Iterable<Channel>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Channel.fromMap(f));
  }
Future<bool> save(Channel model) async {
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
abstract class ChannelRepository extends _ChannelRepositoryGenerated {
  factory ChannelRepository() = _ChannelRepositoryImpl;
}

class _ChannelRepositoryImpl extends _ChannelRepositoryGeneratedImpl
    implements ChannelRepository {
  static _ChannelRepositoryImpl _this;
  factory _ChannelRepositoryImpl() {
    if (_this == null) {
      _this = new _ChannelRepositoryImpl._();
    }
    return _this;
  }
  _ChannelRepositoryImpl._();
}
*/
