import 'package:clean_book/core/errors/failure.dart';
import 'package:clean_book/domain/entities/book.dart';
import 'package:clean_book/domain/repositories/ibook_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomBook{

  final IBookRepository iBookRepository;

  GetRandomBook(this.iBookRepository);

  Future<Either<Failure, Book>> call() async {
    return iBookRepository.getRandomBook();
  }

}