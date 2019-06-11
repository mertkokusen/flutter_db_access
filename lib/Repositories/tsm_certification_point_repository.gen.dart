import 'package:database_access_layer/Entities/tsm_certification_point.gen.dart';
import 'base_provider.dart';

abstract class _TsmCertificationPointRepositoryGenerated {
  Future<TsmCertificationPoint> getInstance(int idAgent);
  Future<bool> save(TsmCertificationPoint agent);
  Future<List<TsmCertificationPoint>> retrieveAll();
}

class _TsmCertificationPointRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmCertificationPointRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_CERTIFICATION_POINT";
  static const String _primaryKey = "";

  _TsmCertificationPointRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmCertificationPoint> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmCertificationPoint.fromMap(map);
  }

  Future<List<TsmCertificationPoint>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmCertificationPoint.fromMap(f)).toList();
  }

  Future<TsmCertificationPoint> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmCertificationPoint.fromMap(f)).first : TsmCertificationPoint();
  }

  Future<Iterable<TsmCertificationPoint>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmCertificationPoint.fromMap(f));
  }
}
/*
abstract class TsmCertificationPointRepository extends _TsmCertificationPointRepositoryGenerated {
  factory TsmCertificationPointRepository() = _TsmCertificationPointRepositoryImpl;
}

class _TsmCertificationPointRepositoryImpl extends _TsmCertificationPointRepositoryGeneratedImpl
    implements TsmCertificationPointRepository {
  static _TsmCertificationPointRepositoryImpl _this;
  factory _TsmCertificationPointRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmCertificationPointRepositoryImpl._();
    }
    return _this;
  }
  _TsmCertificationPointRepositoryImpl._();
}
*/
