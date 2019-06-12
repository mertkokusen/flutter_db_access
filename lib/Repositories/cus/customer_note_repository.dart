import 'package:database_access_layer/entities/cus/customer_note.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/customer_note_repository.gen.dart';

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

