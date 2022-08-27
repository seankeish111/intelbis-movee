/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the FormInputs type in your schema. */
@immutable
class FormInputs extends Model {
  static const classType = const _FormInputsModelType();
  final String id;
  final String? _first_name;
  final String? _second_name;
  final TemporalDate? _moving_date;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get first_name {
    return _first_name;
  }
  
  String? get second_name {
    return _second_name;
  }
  
  TemporalDate? get moving_date {
    return _moving_date;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const FormInputs._internal({required this.id, first_name, second_name, moving_date, createdAt, updatedAt}): _first_name = first_name, _second_name = second_name, _moving_date = moving_date, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory FormInputs({String? id, String? first_name, String? second_name, TemporalDate? moving_date}) {
    return FormInputs._internal(
      id: id == null ? UUID.getUUID() : id,
      first_name: first_name,
      second_name: second_name,
      moving_date: moving_date);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FormInputs &&
      id == other.id &&
      _first_name == other._first_name &&
      _second_name == other._second_name &&
      _moving_date == other._moving_date;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FormInputs {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("first_name=" + "$_first_name" + ", ");
    buffer.write("second_name=" + "$_second_name" + ", ");
    buffer.write("moving_date=" + (_moving_date != null ? _moving_date!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FormInputs copyWith({String? id, String? first_name, String? second_name, TemporalDate? moving_date}) {
    return FormInputs._internal(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      second_name: second_name ?? this.second_name,
      moving_date: moving_date ?? this.moving_date);
  }
  
  FormInputs.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _first_name = json['first_name'],
      _second_name = json['second_name'],
      _moving_date = json['moving_date'] != null ? TemporalDate.fromString(json['moving_date']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'first_name': _first_name, 'second_name': _second_name, 'moving_date': _moving_date?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FIRST_NAME = QueryField(fieldName: "first_name");
  static final QueryField SECOND_NAME = QueryField(fieldName: "second_name");
  static final QueryField MOVING_DATE = QueryField(fieldName: "moving_date");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FormInputs";
    modelSchemaDefinition.pluralName = "FormInputs";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FormInputs.FIRST_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FormInputs.SECOND_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FormInputs.MOVING_DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _FormInputsModelType extends ModelType<FormInputs> {
  const _FormInputsModelType();
  
  @override
  FormInputs fromJson(Map<String, dynamic> jsonData) {
    return FormInputs.fromJson(jsonData);
  }
}