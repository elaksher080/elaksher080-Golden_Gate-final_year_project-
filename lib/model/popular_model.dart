class PopularModel {
  bool? success;
  int? result;
  List<Data>? data;

  PopularModel({this.success, this.result, this.data});

  PopularModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    result = json['result'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['result'] = this.result;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? title;
  String? subtitle;
  Category? category;
  int? enrolled;
  num? avgRatings;
  Null? instructor;
  String? id;
  Thumbnail? thumbnail;

  Data(
      {this.sId,
        this.title,
        this.subtitle,
        this.category,
        this.enrolled,
        this.avgRatings,
        this.instructor,
        this.id,
        this.thumbnail});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    subtitle = json['subtitle'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    enrolled = json['enrolled'];
    avgRatings = json['avgRatings'];
    instructor = json['instructor'];
    id = json['id'];
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['enrolled'] = this.enrolled;
    data['avgRatings'] = this.avgRatings;
    data['instructor'] = this.instructor;
    data['id'] = this.id;
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail!.toJson();
    }
    return data;
  }
}

class Category {
  String? sId;
  String? name;

  Category({this.sId, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

class Thumbnail {
  String? url;
  String? publicId;

  Thumbnail({this.url, this.publicId});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    publicId = json['public_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['public_id'] = this.publicId;
    return data;
  }
}
