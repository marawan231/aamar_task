import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const Post({this.id, this.title, this.body, this.userId});

  @override
  List<Object?> get props => [id, title, body];
}
