// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;
  bool? isFavourite;

  Post({this.id, this.title, this.body, this.userId, this.isFavourite});
//to json
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
      'isFavourite': isFavourite,
    };
  }

//from json
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
      isFavourite: json['isFavourite'],
    );
  }
  @override
  List<Object?> get props => [id, title, body];
}
