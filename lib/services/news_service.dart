import 'package:flutter/foundation.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/repository/news_repository.dart';

class NewsService {
  final _req = NewsRepository();

  Future<News> fetchNewsApi(String selectedFilter) async {
    final response = await _req.fetchNewsApi(selectedFilter);
    return response;
  }

  Future<News> fetchCategoriesApi(String category) async {
    final response = await _req.fetchCategoriesNewsApi(category);
    return response;
  }
}
