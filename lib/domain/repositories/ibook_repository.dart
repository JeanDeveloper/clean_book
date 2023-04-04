import 'package:clean_book/core/errors/failure.dart';
import 'package:clean_book/domain/entities/book.dart';
import 'package:dartz/dartz.dart';

abstract  class IBookRepository{

  Future<Either<Failure, Book>> getRandomBook();

}