// ignore_for_file: must_be_immutable

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/post.dart';
part 'post_model.g.dart';

/// `PostModel` is a class that extends `Post`.
///
/// It is annotated with `@JsonSerializable` to indicate that instances of this class should be serialized to/from JSON.
///
/// It has a constructor that takes `id`, `title`, `body`, `userId`, and `isFavourite` as parameters and passes them to the super class `Post`.
///
/// It also has a factory constructor `fromJson` that creates a new instance of `PostModel` from a map of JSON data.
/// This constructor uses the generated function `_$PostModelFromJson`.
///
/// It has a method `toJson` that converts the `PostModel` instance into a map of JSON data.
/// This method uses the generated function `_$PostModelToJson`.
@JsonSerializable()
class PostModel extends Post {
  PostModel({id, title, body, userId, isFavourite})
      : super(
            id: id,
            title: title,
            body: body,
            userId: userId,
            isFavourite: isFavourite);

  /// Factory constructor that creates a new `PostModel` from a map of JSON data.
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  /// Method that converts the `PostModel` instance into a map of JSON data.
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
