enum CategoryList {
  general,
  entertainment,
  health,
  sports,
  business,
  technology,
}

extension CategoryListExtension on CategoryList {
  String get name {
    switch (this) {
      case CategoryList.general:
        // TODO: Handle this case.
        return 'General';
      case CategoryList.entertainment:
        // TODO: Handle this case.
        return 'Entertainment';
      case CategoryList.health:
        // TODO: Handle this case.
        return 'Health';
      case CategoryList.sports:
        // TODO: Handle this case.
        return 'Sports';
      case CategoryList.business:
        // TODO: Handle this case.
        return 'Business';
      case CategoryList.technology:
        // TODO: Handle this case.
        return 'Technology';
    }
  }

  String get value {
    switch (this) {
      case CategoryList.general:
        // TODO: Handle this case.
        return 'general';
      case CategoryList.entertainment:
        // TODO: Handle this case.
        return 'entertainment';
      case CategoryList.health:
        // TODO: Handle this case.
        return 'Health';
      case CategoryList.sports:
        // TODO: Handle this case.
        return 'sports';
      case CategoryList.business:
        // TODO: Handle this case.
        return 'business';
      case CategoryList.technology:
        // TODO: Handle this case.
        return 'technology';
    }
  }
}
