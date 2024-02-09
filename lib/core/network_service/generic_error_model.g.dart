// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericErrorModel _$GenericErrorModelFromJson(Map<String, dynamic> json) =>
    GenericErrorModel(
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GenericErrorModelToJson(GenericErrorModel instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'message': instance.message,
    };
