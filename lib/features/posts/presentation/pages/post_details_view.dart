import 'package:aamar_task/core/res/custom_text_styles.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/presentation/bloc/cubit/posts_cubit.dart';
import 'package:aamar_task/features/posts/presentation/widgets/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        body: BlocBuilder<PostsCubit, PostsState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildId(),
                      _buildUserId(),
                    ],
                  ),
                  16.verticalSpace,
                  PostItem(post: post, isDetails: true),
                ],
              ),
            );
          },
        ));
  }

  _buildUserId() {
    return Text('User Number: ${post.userId}',
        style: getBoldStyle(fontSize: 14.sp));
  }

  _buildId() {
    return Text(
      'Post Number: ${post.id}',
      style: getBoldStyle(fontSize: 14.sp),
    );
  }
}
