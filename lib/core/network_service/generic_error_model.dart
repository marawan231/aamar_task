import 'package:json_annotation/json_annotation.dart'; 

part 'generic_error_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class GenericErrorModel {
  @JsonKey(name: 'errors')
  List<String>? errors;
  @JsonKey(name: 'message')
  String? message;

  GenericErrorModel({this.errors, this.message});

   factory GenericErrorModel.fromJson(Map<String, dynamic> json) => _$GenericErrorModelFromJson(json);

   Map<String, dynamic> toJson() => _$GenericErrorModelToJson(this);
}

