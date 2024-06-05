class Pageable {
  int pageNumber;
  int pageSize;
  Sort sort;
  int offset;
  bool paged;
  bool unpaged;

  Pageable({
    required this.pageNumber,
    required this.pageSize,
    required this.sort,
    required this.offset,
    required this.paged,
    required this.unpaged,
  });

}

class Sort {
  bool empty;
  bool unsorted;
  bool sorted;

  Sort({
    required this.empty,
    required this.unsorted,
    required this.sorted,
  });
}
