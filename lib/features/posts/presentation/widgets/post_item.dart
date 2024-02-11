import 'package:aamar_task/core/navigator/named_routes.dart';
import 'package:aamar_task/core/navigator/navigator.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/presentation/widgets/custom_favourite_button.dart';
import 'package:aamar_task/features/posts/presentation/widgets/custom_subtitle.dart';
import 'package:aamar_task/features/posts/presentation/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// `PostItem` is a stateless widget that displays a single post.
///
/// It takes a `Post` object as a parameter and displays the post's title, body, and favourite status.
/// The post item is wrapped in an `InkWell` widget that navigates to the post details when tapped.
class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.post, this.isDetails})
      : super(key: key);

  final Post post;
  final bool? isDetails;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => isDetails ?? false ? null : _navigateToPostDetails(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: _getContainerDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPostHeader(),
            SizedBox(height: 8),
            CustomSubtitles(
                subtitle: post.body.toString(), isDetails: isDetails ?? false),
            // Text(
            //   'ID: ${post.id}',
            //   style: TextStyle(color: ColorsManager.black),
            // ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the post details.
  void _navigateToPostDetails(BuildContext context) {
    Go.toNamed(NamedRoutes.postDetails, arguments: {'post': post});
  }

  /// Builds the post header containing the post title and the favourite button.
  Widget _buildPostHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Customtitle(
            title: post.title.toString(), isDetails: isDetails ?? false),
        SizedBox(width: 32),
        CustomFavouriteButton(post: post),
      ],
    );
  }

  /// Returns the decoration for the post item container.
  BoxDecoration _getContainerDecoration() {
    return BoxDecoration(
      border: Border.all(color: ColorsManager.grey),
    );
  }
}
