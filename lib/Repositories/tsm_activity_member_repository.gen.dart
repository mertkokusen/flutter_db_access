import 'package:database_access_layer/Entities/tsm_activity_member.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivityMemberRepositoryGenerated {
  Future<TsmActivityMember> getInstance(int idAgent);
  Future<bool> save(TsmActivityMember agent);
  Future<List<TsmActivityMember>> retrieveAll();
}

class _TsmActivityMemberRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivityMemberRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY_MEMBER";
  static const String _primaryKey = "ID_ACTIVITY_MEMBER";

  _TsmActivityMemberRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivityMember> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivityMember.fromMap(map);
  }

  Future<List<TsmActivityMember>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivityMember.fromMap(f)).toList();
  }

  Future<TsmActivityMember> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivityMember.fromMap(f)).first : TsmActivityMember();
  }

  Future<Iterable<TsmActivityMember>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivityMember.fromMap(f));
  }
Future<bool> save(TsmActivityMember model) async {
    bool result;
    if (model.idActivityMember == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivityMember = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivityMember.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivityMemberRepository extends _TsmActivityMemberRepositoryGenerated {
  factory TsmActivityMemberRepository() = _TsmActivityMemberRepositoryImpl;
}

class _TsmActivityMemberRepositoryImpl extends _TsmActivityMemberRepositoryGeneratedImpl
    implements TsmActivityMemberRepository {
  static _TsmActivityMemberRepositoryImpl _this;
  factory _TsmActivityMemberRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivityMemberRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivityMemberRepositoryImpl._();
}
*/
