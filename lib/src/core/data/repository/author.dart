import 'package:afon_app/src/core/data/adapters/author.dart';
import 'package:afon_app/src/core/data/network/services/get_author.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:injectable/injectable.dart';

abstract class AuthorRepository {
  Future<List<AuthorDto>> getAuthor();
}

@Injectable(as: AuthorRepository)
class AuthorRepositoryImpl implements AuthorRepository {
  final GetAuthorService _getAuthorService;

  AuthorRepositoryImpl(this._getAuthorService);

  @override
  Future<List<AuthorDto>> getAuthor() async {
    final result = await _getAuthorService();
    return result.map((e) => e.toDomain).toList();
  }
}
