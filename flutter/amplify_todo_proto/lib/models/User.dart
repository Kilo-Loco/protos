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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the User type in your schema. */
@immutable
class User extends Model {
  static const classType = const UserType();
  final String id;
  final String email;
  final List<Todo> todos;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const User._internal({@required this.id, @required this.email, this.todos});

  factory User({String id, @required String email, List<Todo> todos}) {
    return User._internal(
        id: id == null ? UUID.getUUID() : id,
        email: email,
        todos: todos != null ? List.unmodifiable(todos) : todos);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        email == other.email &&
        DeepCollectionEquality().equals(todos, other.todos);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("email=" + "$email");
    buffer.write("}");

    return buffer.toString();
  }

  User copyWith({String id, String email, List<Todo> todos}) {
    return User(
        id: id ?? this.id,
        email: email ?? this.email,
        todos: todos ?? this.todos);
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        todos = json['todos'] is List
            ? (json['todos'] as List)
                .map((e) => Todo.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'todos': todos?.map((e) => e?.toJson())?.toList()
      };

  static final QueryField ID = QueryField(fieldName: "user.id");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField TODOS = QueryField(
      fieldName: "todos",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Todo).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";

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
        key: User.EMAIL,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: User.TODOS,
        isRequired: false,
        ofModelName: (Todo).toString(),
        associatedKey: Todo.USERID));
  });
}

class UserType extends ModelType<User> {
  const UserType();

  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
}
