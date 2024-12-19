import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:http/http.dart' as http;

class NewsRepository {
  Future<News> fetchNewsApi(String selectedFilter) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=$selectedFilter&apiKey=4fc4df4448df4f6e905f8b939c80212f';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return News.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<News> fetchCategoriesNewsApi(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=$category&apiKey=4fc4df4448df4f6e905f8b939c80212f';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return News.fromJson(body);
    }
    throw Exception('Error');
  }
}
