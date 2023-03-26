import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fields_record.g.dart';

abstract class FieldsRecord
    implements Built<FieldsRecord, FieldsRecordBuilder> {
  static Serializer<FieldsRecord> get serializer => _$fieldsRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get uid;

  AreaStruct get area;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FieldsRecordBuilder builder) => builder
    ..displayName = ''
    ..uid = ''
    ..area = AreaStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fields');

  static Stream<FieldsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FieldsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FieldsRecord._();
  factory FieldsRecord([void Function(FieldsRecordBuilder) updates]) =
      _$FieldsRecord;

  static FieldsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFieldsRecordData({
  String? displayName,
  String? uid,
  AreaStruct? area,
}) {
  final firestoreData = serializers.toFirestore(
    FieldsRecord.serializer,
    FieldsRecord(
      (f) => f
        ..displayName = displayName
        ..uid = uid
        ..area = AreaStructBuilder(),
    ),
  );

  // Handle nested data for "area" field.
  addAreaStructData(firestoreData, area, 'area');

  return firestoreData;
}
