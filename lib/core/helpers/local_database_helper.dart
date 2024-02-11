import 'dart:convert';
import 'package:aamar_task/core/navigator/navigator.dart';
import 'package:aamar_task/core/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/posts/domain/entities/post.dart';

class PostsManager {
  static const _key = 'posts';

  Future<void> addPost(Post post) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> posts = prefs.getStringList(_key) ?? [];

    posts.add(json.encode(post.toJson()));

    await prefs.setStringList(_key, posts);
  }

  Future<void> removePost(Post post) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> posts = prefs.getStringList(_key) ?? [];

    posts.removeWhere((postJson) {
      final postData = json.decode(postJson);
      return postData['title'] == post.title &&
          postData['isCompleted'] == post.isFavourite;
    });

    await prefs.setStringList(_key, posts);
  }

  Future<List<Post>> getPosts() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> posts = prefs.getStringList(_key) ?? [];

    return posts.map((postJson) {
      final postData = json.decode(postJson);
      return Post(
          body: postData['body'],
          title: postData['title'],
          userId: postData['userId'],
          id: postData['id'],
          isFavourite: postData['isFavourite']);
    }).toList();
    //
  }

  //save posts
  Future<void> savePosts(List<Post> posts) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> postsJson =
        posts.map((post) => json.encode(post.toJson())).toList();
    await prefs.setStringList(_key, postsJson);
  }

  setPostIsFavourite(Post post, bool isFavourite) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> posts = prefs.getStringList(_key) ?? [];

    final updatedPosts = posts.map((postJson) {
      final postData = json.decode(postJson);
      if (postData['title'] == post.title) {
        postData['isFavourite'] = isFavourite;
      }
      return json.encode(postData);
    }).toList();

    await prefs.setStringList(_key, updatedPosts);
  }

  //remove favourite post
  Future<void> removeFavouritePost(Post post) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> posts = prefs.getStringList(_key) ?? [];

    final updatedPosts = posts.map((postJson) {
      final postData = json.decode(postJson);
      if (postData['title'] == post.title) {
        postData['isFavourite'] = false;
      }
      return json.encode(postData);
    }).toList();

    await prefs.setStringList(_key, updatedPosts);
  }

  //remove all posts
  Future<void> removeAllPosts() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
    showErrorSnackBar(
        message: 'cache cleared', context: Go.navigatorKey.currentContext!);
  }
}
