import 'package:clean_book/core/errors/exceptions.dart';
import 'package:clean_book/data/models/book_model.dart';
import 'package:http/http.dart' as http;



abstract class IBookRemoteDataSource{

  Future<BookModel> requestRAndomBook();

}

class BookRemoteDataSource implements IBookRemoteDataSource{

  final http.Client client;

  BookRemoteDataSource(this.client);

  @override
  Future<BookModel> requestRAndomBook() async {

    final String url =  "https://fakerapi.it/api/v1/books?_quantity=1";
    final uri = Uri.parse(url);
    final response =  await client.get(uri);

    if(  response.statusCode == 200 ){
      return bookModelFromJson(response.body);
    }else{
      throw ServerException();
    }

  }

}