import 'package:clean_book/domain/entities/datum.dart';

class DatumModel extends Datum{
    DatumModel({
      required this.title,
      required this.author,
      required this.genre,
      required this.description,
      required this.isbn,
      required this.image,
      required this.published,
      required this.publisher,
    }) : super(title: title, author: author, genre: genre, description: description, isbn: isbn, image: image, published: published, publisher: publisher);

  @override
  String title;

  @override
  String author;

  @override
  String genre;

  @override
  String description;

  @override
  String isbn;

  @override
  String image;

  @override
  DateTime published;

  @override
  String publisher;

  factory DatumModel.fromJson(Map<String, dynamic> json) => DatumModel(
    title: json["title"],
    author: json["author"],
    genre: json["genre"],
    description: json["description"],
    isbn: json["isbn"],
    image: json["image"],
    published: DateTime.parse(json["published"]),
    publisher: json["publisher"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "author": author,
    "genre": genre,
    "description": description,
    "isbn": isbn,
    "image": image,
    "published": "${published.year.toString().padLeft(4, '0')}-${published.month.toString().padLeft(2, '0')}-${published.day.toString().padLeft(2, '0')}",
    "publisher": publisher,
  };
}
