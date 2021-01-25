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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Animal type in your schema. */
@immutable
class Animal extends Model {
  static const classType = const AnimalType();
  final String id;
  final String emoji;
  final String name;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Animal._internal(
      {@required this.id, @required this.emoji, @required this.name});

  factory Animal(
      {@required String id, @required String emoji, @required String name}) {
    return Animal._internal(
        id: id == null ? UUID.getUUID() : id, emoji: emoji, name: name);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Animal &&
        id == other.id &&
        emoji == other.emoji &&
        name == other.name;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Animal {");
    buffer.write("id=" + id + ", ");
    buffer.write("emoji=" + emoji + ", ");
    buffer.write("name=" + name);
    buffer.write("}");

    return buffer.toString();
  }

  Animal copyWith({String id, String emoji, String name}) {
    return Animal(
        id: id ?? this.id, emoji: emoji ?? this.emoji, name: name ?? this.name);
  }

  Animal.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        emoji = json['emoji'],
        name = json['name'];

  Map<String, dynamic> toJson() => {'id': id, 'emoji': emoji, 'name': name};

  static final QueryField ID = QueryField(fieldName: "animal.id");
  static final QueryField EMOJI = QueryField(fieldName: "emoji");
  static final QueryField NAME = QueryField(fieldName: "name");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Animal";
    modelSchemaDefinition.pluralName = "Animals";

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
        key: Animal.EMOJI,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Animal.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class AnimalType extends ModelType<Animal> {
  const AnimalType();

  @override
  Animal fromJson(Map<String, dynamic> jsonData) {
    return Animal.fromJson(jsonData);
  }
}
