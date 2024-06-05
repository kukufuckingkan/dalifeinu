import 'Pageable.dart';
import 'item.dart';

class AnimalResponse {
  List<Item> content;
  Pageable pageable;
  bool last;
  int totalPages;
  int totalElements;
  bool first;
  int size;
  int number;
  Sort sort;
  int numberOfElements;
  bool empty;

  AnimalResponse({
    required this.content,
    required this.pageable,
    required this.last,
    required this.totalPages,
    required this.totalElements,
    required this.first,
    required this.size,
    required this.number,
    required this.sort,
    required this.numberOfElements,
    required this.empty,
  });
}
