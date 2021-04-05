/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Post type in your schema. */
@immutable
class Post extends Model {
  static const classType = const PostType();
  final String id;
  final String imageKey;
  final String caption;
  final TemporalDateTime creationDate;
  final int likeCount;
  final User author;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Post._internal(
      {@required this.id,
      @required this.imageKey,
      this.caption,
      @required this.creationDate,
      @required this.likeCount,
      @required this.author});

  factory Post(
      {String id,
      @required String imageKey,
      String caption,
      @required TemporalDateTime creationDate,
      @required int likeCount,
      @required User author}) {
    return Post._internal(
        id: id == null ? UUID.getUUID() : id,
        imageKey: imageKey,
        caption: caption,
        creationDate: creationDate,
        likeCount: likeCount,
        author: author);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        imageKey == other.imageKey &&
        caption == other.caption &&
        creationDate == other.creationDate &&
        likeCount == other.likeCount &&
        author == other.author;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Post {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("imageKey=" + "$imageKey" + ", ");
    buffer.write("caption=" + "$caption" + ", ");
    buffer.write("creationDate=" +
        (creationDate != null ? creationDate.format() : "null") +
        ", ");
    buffer.write("likeCount=" +
        (likeCount != null ? likeCount.toString() : "null") +
        ", ");
    buffer.write("author=" + (author != null ? author.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Post copyWith(
      {String id,
      String imageKey,
      String caption,
      TemporalDateTime creationDate,
      int likeCount,
      User author}) {
    return Post(
        id: id ?? this.id,
        imageKey: imageKey ?? this.imageKey,
        caption: caption ?? this.caption,
        creationDate: creationDate ?? this.creationDate,
        likeCount: likeCount ?? this.likeCount,
        author: author ?? this.author);
  }

  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        imageKey = json['imageKey'],
        caption = json['caption'],
        creationDate = json['creationDate'] != null
            ? TemporalDateTime.fromString(json['creationDate'])
            : null,
        likeCount = json['likeCount'],
        author = json['author'] != null
            ? User.fromJson(new Map<String, dynamic>.from(json['author']))
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'imageKey': imageKey,
        'caption': caption,
        'creationDate': creationDate?.format(),
        'likeCount': likeCount,
        'author': author?.toJson()
      };

  static final QueryField ID = QueryField(fieldName: "post.id");
  static final QueryField IMAGEKEY = QueryField(fieldName: "imageKey");
  static final QueryField CAPTION = QueryField(fieldName: "caption");
  static final QueryField CREATIONDATE = QueryField(fieldName: "creationDate");
  static final QueryField LIKECOUNT = QueryField(fieldName: "likeCount");
  static final QueryField AUTHOR = QueryField(
      fieldName: "author",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (User).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Post";
    modelSchemaDefinition.pluralName = "Posts";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.IMAGEKEY,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.CAPTION,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.CREATIONDATE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.LIKECOUNT,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: Post.AUTHOR,
        isRequired: true,
        targetName: "postAuthorId",
        ofModelName: (User).toString()));
  });
}

class PostType extends ModelType<Post> {
  const PostType();

  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}
