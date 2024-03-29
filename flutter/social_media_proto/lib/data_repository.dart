import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:social_media_proto/models/Post.dart';
import 'package:social_media_proto/models/User.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class DataRepository {
  Future<User> getUserById(String userId) async {
    try {
      final users = await Amplify.DataStore.query(
        User.classType,
        where: User.ID.eq(userId),
      );

      return users.isNotEmpty ? users.first : null;
    } catch (e) {
      throw e;
    }
  }

  Future<User> createUser({
    @required String userId,
    @required String username,
    String email,
  }) async {
    final newUser = User(
      id: userId.trim(),
      username: username.trim(),
      email: email == null ? null : email.trim(),
    );
    try {
      await Amplify.DataStore.save(newUser);
      return newUser;
    } catch (e) {
      throw e;
    }
  }

  Future<User> updateUser(User updatedUser) async {
    try {
      await Amplify.DataStore.save(updatedUser);
      return updatedUser;
    } catch (e) {
      throw e;
    }
  }

  Stream<User> currenUserStream(String currentUserId) {
    return Amplify.DataStore.observe(User.classType)
        .where((event) => event.item.id == currentUserId)
        .map((event) => event.item);
  }

  Future<List<Post>> getPosts(int index) async {
    try {
      final posts = await Amplify.DataStore.query(
        Post.classType,
        pagination: QueryPagination(page: index, limit: 50),
      );
      return posts;
    } catch (e) {
      throw e;
    }
  }

  Future<Post> createPost(
    User user,
    String imageKey,
    String caption,
  ) async {
    final newPost = Post(
      imageKey: imageKey,
      caption: caption,
      creationDate: TemporalDateTime.now(),
      likeCount: 0,
      author: user,
    );

    try {
      await Amplify.DataStore.save(newPost);
      return newPost;
    } catch (e) {
      throw e;
    }
  }
}
