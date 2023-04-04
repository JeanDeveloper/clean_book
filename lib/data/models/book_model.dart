import 'dart:convert';
import 'package:clean_book/data/models/datum_model.dart';
import 'package:clean_book/domain/entities/book.dart';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));
String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel extends Book {
  BookModel({
    required this.status,
    required this.code,
    required this.total,
    required this.data,
  }) : super( status: status, code: code, total: total, data: data ) ;

  @override
  String status;

  @override
  int code;

  @override
  int total;

  @override
  List<DatumModel> data;

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
      status: json["status"],
      code: json["code"],
      total: json["total"],
      data: List<DatumModel>.from(json["data"].map((x) => DatumModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
      "status": status,
      "code": code,
      "total": total,
      "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

