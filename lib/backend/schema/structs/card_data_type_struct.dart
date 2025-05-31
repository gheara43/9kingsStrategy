// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardDataTypeStruct extends BaseStruct {
  CardDataTypeStruct({
    String? name,
    String? image,
    String? description,
    String? stats,
  })  : _name = name,
        _image = image,
        _description = description,
        _stats = stats;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "stats" field.
  String? _stats;
  String get stats => _stats ?? '';
  set stats(String? val) => _stats = val;

  bool hasStats() => _stats != null;

  static CardDataTypeStruct fromMap(Map<String, dynamic> data) =>
      CardDataTypeStruct(
        name: data['name'] as String?,
        image: data['image'] as String?,
        description: data['description'] as String?,
        stats: data['stats'] as String?,
      );

  static CardDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CardDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'image': _image,
        'description': _description,
        'stats': _stats,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'stats': serializeParam(
          _stats,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardDataTypeStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        stats: deserializeParam(
          data['stats'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardDataTypeStruct &&
        name == other.name &&
        image == other.image &&
        description == other.description &&
        stats == other.stats;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, image, description, stats]);
}

CardDataTypeStruct createCardDataTypeStruct({
  String? name,
  String? image,
  String? description,
  String? stats,
}) =>
    CardDataTypeStruct(
      name: name,
      image: image,
      description: description,
      stats: stats,
    );
