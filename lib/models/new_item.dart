class NewsItem {
  final int id;
  final String title;
  final String date;
  final String content;
  final String image;

  NewsItem({
    required this.id,
    required this.title,
    required this.date,
    required this.content,
    required this.image,
  });


  @override
  String toString() {
    return '$id $title  $date';
  }
}
