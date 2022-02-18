import 'package:afon_app/src/core/data/repository/lib_book.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:injectable/injectable.dart';

abstract class GetLibBooksByAuthorIdUseCase {
  Future<List<LibBookDto>> call(int authorId);
}

@Injectable(as: GetLibBooksByAuthorIdUseCase)
class GetLibBooksInteractor implements GetLibBooksByAuthorIdUseCase {
  final LibBookRepository _repository;

  GetLibBooksInteractor(this._repository);
  Future<List<LibBookDto>> call(int authorId) =>
      _repository.getLibBooksByAuthorId(authorId);
}
