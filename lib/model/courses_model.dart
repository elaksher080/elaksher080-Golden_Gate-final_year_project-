class CoursesModel {
  bool? success;
  int? results;
  Pagination? pagination;
  List<Data>? data;

  CoursesModel({this.success, this.results, this.pagination, this.data});

  factory CoursesModel.fromJson(Map<String, dynamic> json) {
    return CoursesModel(
      success: json['success'],
      results: json['results'],
      pagination: json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null,
      data: json['data'] != null ? (json['data'] as List).map((e) => Data.fromJson(e)).toList() : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['success'] = success;
    data['results'] = results;
    data['pagination'] = pagination?.toJson();
    data['data'] = this.data?.map((e) => e.toJson()).toList();
    return data;
  }
}

class Pagination {
  int? currentPage;
  int? limit;
  int? totalPages;
  int? next;

  Pagination({this.currentPage, this.limit, this.totalPages, this.next});

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      currentPage: json['currentPage'],
      limit: json['limit'],
      totalPages: json['totalPages'],
      next: json['next'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['currentPage'] = currentPage;
    data['limit'] = limit;
    data['totalPages'] = totalPages;
    data['next'] = next;
    return data;
  }
}

class Data {
  Thumbnail? thumbnail;
  List<dynamic>? studentsEnrolled;
  List<dynamic>? tag;
  int? progressPercentage;
  String? sId;
  String? title;
  String? subtitle;
  String? description;
  String? slug;
  int? duration;
  Category? category;
  List<dynamic>? subCategories;
  List<String>? learningGoals;
  int? enrolled;
  int? ratingsNumber;
  int? avgRatings;
  Instructor? instructor;
  List<String>? languages;
  double? price;
  List<String>? requirements;
  String? level;
  List<dynamic>? sideMeta;
  String? createdAt;
  String? updatedAt;
  List<String>? usersEnrolled;
  String? id;

  Data({
    this.thumbnail,
    this.studentsEnrolled,
    this.tag,
    this.progressPercentage,
    this.sId,
    this.title,
    this.subtitle,
    this.description,
    this.slug,
    this.duration,
    this.category,
    this.subCategories,
    this.learningGoals,
    this.enrolled,
    this.ratingsNumber,
    this.avgRatings,
    this.instructor,
    this.languages,
    this.price,
    this.requirements,
    this.level,
    this.sideMeta,
    this.createdAt,
    this.updatedAt,
    this.usersEnrolled,
    this.id,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      thumbnail: json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null,
      studentsEnrolled: json['studentsEnrolled'] != null ? List<dynamic>.from(json['studentsEnrolled']) : null,
      tag: json['tag'] != null ? List<dynamic>.from(json['tag']) : null,
      progressPercentage: json['progressPercentage'],
      sId: json['_id'],
      title: json['title'],
      subtitle: json['subtitle'],
      description: json['description'],
      slug: json['slug'],
      duration: json['duration'],
      category: json['category'] != null ? Category.fromJson(json['category']) : null,
      subCategories: json['subCategories'] != null ? List<dynamic>.from(json['subCategories']) : null,
      learningGoals: json['learningGoals'] != null ? List<String>.from(json['learningGoals']) : null,
      enrolled: json['enrolled'],
      ratingsNumber: json['ratingsNumber'],
      avgRatings: json['avgRatings'],
      instructor: json['instructor'] != null ? Instructor.fromJson(json['instructor']) : null,
      languages: json['languages'] != null ? List<String>.from(json['languages']) : null,
      price: json['price'],
      requirements: json['requirements'] != null ? List<String>.from(json['requirements']) : null,
      level: json['level'],
      sideMeta: json['sideMeta'] != null ? List<dynamic>.from(json['sideMeta']) : null,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      usersEnrolled: json['usersEnrolled'] != null ? List<String>.from(json['usersEnrolled']) : null,
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (thumbnail != null) data['thumbnail'] = thumbnail!.toJson();
    if (studentsEnrolled != null) data['studentsEnrolled'] = studentsEnrolled;
    if (tag != null) data['tag'] = tag;
    data['progressPercentage'] = progressPercentage;
    data['_id'] = sId;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['description'] = description;
    data['slug'] = slug;
    data['duration'] = duration;
    if (category != null) data['category'] = category!.toJson();
    if (subCategories != null) data['subCategories'] = subCategories;
    if (learningGoals != null) data['learningGoals'] = learningGoals;
    data['enrolled'] = enrolled;
    data['ratingsNumber'] = ratingsNumber;
    data['avgRatings'] = avgRatings;
    if (instructor != null) data['instructor'] = instructor!.toJson();
    if (languages != null) data['languages'] = languages;
    data['price'] = price;
    if (requirements != null) data['requirements'] = requirements;
    data['level'] = level;
    if (sideMeta != null) data['sideMeta'] = sideMeta;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (usersEnrolled != null) data['usersEnrolled'] = usersEnrolled;
    data['id'] = id;
    return data;
  }
}

class Thumbnail {
  String? url;
  String? publicId;

  Thumbnail({this.url, this.publicId});

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      url: json['url'],
      publicId: json['public_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['url'] = url;
    data['public_id'] = publicId;
    return data;
  }
}

class Category {
  String? sId;
  String? name;

  Category({this.sId, this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      sId: json['_id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['_id'] = sId;
    data['name'] = name;
    return data;
  }
}

class Instructor {
  String? sId;

  Instructor({this.sId});

  factory Instructor.fromJson(Map<String, dynamic> json) {
    return Instructor(
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['_id'] = sId;
    return data;
  }
}
