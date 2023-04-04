import 'package:bloc/bloc.dart';
import 'package:clean_book/core/errors/failure.dart';
import 'package:clean_book/domain/entities/book.dart';
import 'package:clean_book/domain/usecases/get_random_book.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  final GetRandomBook getRandomBook;
  BookCubit(this.getRandomBook) : super( BookInitial() );


  void getNewRandomBook() async {

    emit( BookLoading() );
    final failureOrBook =  await getRandomBook();


  }


  BookState _failureOrBook( Either<Failure, Book> failureOrBook ){

    return failureOrBook.fold(
      (failure) => BookError(_mapFailureToMessage(failure)), 
      (randomBook) => BookLoaded(randomBook)
    );


  }


  String _mapFailureToMessage(Failure failure){
    switch (failure.runtimeType) {
      case ServerFailure:
        return "Ha ocurrido un error, por favor intenta nuevamente ";
      default:
        return "Error inesperado";
    }
  }


}
