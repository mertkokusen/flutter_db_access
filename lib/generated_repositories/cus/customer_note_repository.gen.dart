
part of '../../repositories/cus/customer_note_repository.dart';

abstract class _CustomerNoteRepositoryGenerated {
  Future<CustomerNote> getInstance(int idAgent);
  Future<List<CustomerNote>> retrieveAll();

 Future<bool> save(CustomerNote agent);
}
class _CustomerNoteRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerNoteRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_NOTE";
  static const String _primaryKey = "ID_CUSTOMER_NOTE";

  _CustomerNoteRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerNote> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerNote.fromMap(map);
  }

  Future<List<CustomerNote>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerNote.fromMap(f)).toList();
  }

  Future<CustomerNote> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerNote.fromMap(f)).first : CustomerNote();
  }

  Future<Iterable<CustomerNote>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerNote.fromMap(f));
  }
Future<bool> save(CustomerNote model) async {
    bool result;
    if (model.idCustomerNote == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerNote = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerNote.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerNoteRepository extends _CustomerNoteRepositoryGenerated {
  factory CustomerNoteRepository() = _CustomerNoteRepositoryImpl;
}

class _CustomerNoteRepositoryImpl extends _CustomerNoteRepositoryGeneratedImpl
    implements CustomerNoteRepository {
  static _CustomerNoteRepositoryImpl _this;
  factory _CustomerNoteRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerNoteRepositoryImpl._();
    }
    return _this;
  }
  _CustomerNoteRepositoryImpl._();
}
*/
