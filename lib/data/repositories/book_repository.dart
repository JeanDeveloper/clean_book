import 'package:clean_book/core/errors/exceptions.dart';
import 'package:clean_book/data/datasources/book/book_remote._datasource.dart';
import 'package:clean_book/domain/entities/book.dart';
import 'package:clean_book/core/errors/failure.dart';
import 'package:clean_book/domain/repositories/ibook_repository.dart';
import 'package:dartz/dartz.dart';

class BookRepository implements IBookRepository{

  final IBookRemoteDataSource remoteDataSource;

  BookRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, Book>> getRandomBook()  async {

    try {

      final book =  await remoteDataSource.requestRAndomBook();

      return Right(book);
    



    } on ServerException {

      return Left(ServerFailure(message: "Ha Ocurrido un error al obtener los datos del servidor"));
    }
  }

}