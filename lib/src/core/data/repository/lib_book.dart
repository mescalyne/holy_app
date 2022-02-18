import 'package:afon_app/src/core/data/adapters/lib_book.dart';
import 'package:afon_app/src/core/data/network/services/get_lib_book_by_author_id.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:injectable/injectable.dart';

abstract class LibBookRepository {
  Future<List<LibBookDto>> getLibBooksByAuthorId(int authorId);
}

@Injectable(as: LibBookRepository)
class LibBookRepositoryImpl implements LibBookRepository {
  final GetLibBooksByAuthorIdService _getLibBooksService;

  LibBookRepositoryImpl(this._getLibBooksService);

  @override
  Future<List<LibBookDto>> getLibBooksByAuthorId(int authorId) async {
    final result = await _getLibBooksService(authorId);
    return result.map((e) => e.toDomain).toList();
  }
}
