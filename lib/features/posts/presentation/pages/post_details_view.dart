import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/presentation/widgets/post_item.dart';
import 'package:flutter/material.dart';

class PostDetailsView extends StatelessWidget {
  const PostDetailsView({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Post Details'),
        ),
        body: PostItem(post: post));
  }
}
