enum FilterList {
  bbcNews,
  aryNews,
  independent,
  reuters,
  cnn,
  alJazeera,
  abcNews
}

extension FilterListExtension on FilterList {
  String get name {
    switch (this) {
      case FilterList.bbcNews:
        return "BBC News";
      case FilterList.cnn:
        return "CNN";
      case FilterList.alJazeera:
        return "Al Jazeera";
      case FilterList.aryNews:
        return "Ary News";
      case FilterList.independent:
        return "Independent";
      case FilterList.reuters:
        return "Reuters";
      case FilterList.abcNews:
        return "Abc News";
    }
  }

  String get value {
    switch (this) {
      case FilterList.bbcNews:
        return "bbc-news";
      case FilterList.cnn:
        return "cnn";
      case FilterList.alJazeera:
        return "al-jazeera-english";
      case FilterList.aryNews:
        return "ary-news";
      case FilterList.independent:
        return "independent";
      case FilterList.reuters:
        return "reuters";
      case FilterList.abcNews:
        return "abc-news";
    }
  }
}
