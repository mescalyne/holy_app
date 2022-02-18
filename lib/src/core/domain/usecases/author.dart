import 'package:afon_app/src/core/data/repository/author.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:injectable/injectable.dart';

abstract class GetAuthorUseCase {
  Future<List<AuthorDto>> call();
}

@Injectable(as: GetAuthorUseCase)
class GetAuthorInteractor implements GetAuthorUseCase {
  final AuthorRepository _repository;

  GetAuthorInteractor(this._repository);

  Future<List<AuthorDto>> call() => _repository.getAuthor();
}
