import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'area_struct.g.dart';

abstract class AreaStruct implements Built<AreaStruct, AreaStructBuilder> {
  static Serializer<AreaStruct> get serializer => _$areaStructSerializer;

  @BuiltValueField(wireName: 'Color')
  Color? get color;

  @BuiltValueField(wireName: 'BGColor')
  Color? get bGColor;

  @BuiltValueField(wireName: 'Positions')
  LatLng? get positions;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AreaStructBuilder builder) =>
      builder..firestoreUtilData = FirestoreUtilData();

  AreaStruct._();
  factory AreaStruct([void Function(AreaStructBuilder) updates]) = _$AreaStruct;
}

AreaStruct createAreaStruct({
  Color? color,
  Color? bGColor,
  LatLng? positions,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AreaStruct(
      (a) => a
        ..color = color
        ..bGColor = bGColor
        ..positions = positions
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AreaStruct? updateAreaStruct(
  AreaStruct? area, {
  bool clearUnsetFields = true,
}) =>
    area != null
        ? (area.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAreaStructData(
  Map<String, dynamic> firestoreData,
  AreaStruct? area,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (area == null) {
    return;
  }
  if (area.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && area.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final areaData = getAreaFirestoreData(area, forFieldValue);
  final nestedData = areaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = area.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAreaFirestoreData(
  AreaStruct? area, [
  bool forFieldValue = false,
]) {
  if (area == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(AreaStruct.serializer, area);

  // Add any Firestore field values
  area.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAreaListFirestoreData(
  List<AreaStruct>? areas,
) =>
    areas?.map((a) => getAreaFirestoreData(a, true)).toList() ?? [];
