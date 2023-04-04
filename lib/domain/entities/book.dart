import 'package:clean_book/domain/entities/datum.dart';
import 'package:equatable/equatable.dart';

class Book extends Equatable{

  final String status;
  final int code;
  final int total;
  final List<Datum> data;

  Book({
    required this.status, 
    required this.code, 
    required this.total, 
    required this.data
  });

  @override
  List<Object?> get props => [ status, code, total, data ];


}