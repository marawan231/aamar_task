import 'package:aamar_task/core/navigator/route_generator.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:aamar_task/core/utils/utils.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:flutter/material.dart';

/// `CustomFavouriteButton` is a stateless widget that displays a favourite button.
///
/// It takes a `Post` object as a parameter and displays a filled heart icon if the post is marked as favourite.
/// Otherwise, it displays a heart outline icon.
///
/// When the button is tapped, it toggles the favourite status of the post.
/// If an error occurs during the toggle, it shows an error snack bar.
class CustomFavouriteButton extends StatelessWidget {
  const CustomFavouriteButton({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _toggleFavourite(context),
      child: Icon(
        post.isFavourite ?? false ? Icons.favorite : Icons.favorite_border,
        color: post.isFavourite ?? false
            ? ColorsManager.red
            : ColorsManager.greyDark,
      ),
    );
  }

  /// Toggles the favourite status of the post.
  ///
  /// If an error occurs during the toggle, it shows an error snack bar.
  void _toggleFavourite(BuildContext context) {
    RouterGenerator.postsCubit.state.maybeWhen(
      orElse: () => RouterGenerator.postsCubit.toggleFavourite(post),
      error: (message) => WidgetsBinding.instance.addPostFrameCallback((_) {
        showErrorSnackBar(message: message, context: context);
      }),
    );
  }
}
