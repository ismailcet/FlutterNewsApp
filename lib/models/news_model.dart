import 'package:newsapp/models/article_model.dart';

class News {
  final String? status;
  final int? totalResults;
  final List<Article> articles;

  News(
      {required this.status,
      required this.totalResults,
      required this.articles});
  factory News.fromJson(Map<String, dynamic> json) {
    List<Article> articlesList = <Article>[];
    if (json['articles'] != null) {
      json['articles'].forEach((v) {
        articlesList.add(Article.fromJson(v));
      });
    }
    return News(
        status: json['status'],
        totalResults: json['totalResults'],
        articles: articlesList);
  }
}
