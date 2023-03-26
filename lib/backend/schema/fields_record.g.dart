// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FieldsRecord> _$fieldsRecordSerializer =
    new _$FieldsRecordSerializer();

class _$FieldsRecordSerializer implements StructuredSerializer<FieldsRecord> {
  @override
  final Iterable<Type> types = const [FieldsRecord, _$FieldsRecord];
  @override
  final String wireName = 'FieldsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FieldsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'area',
      serializers.serialize(object.area,
          specifiedType: const FullType(AreaStruct)),
    ];
    Object? value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FieldsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FieldsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area':
          result.area.replace(serializers.deserialize(value,
              specifiedType: const FullType(AreaStruct))! as AreaStruct);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldsRecord extends FieldsRecord {
  @override
  final String? displayName;
  @override
  final String? uid;
  @override
  final AreaStruct area;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FieldsRecord([void Function(FieldsRecordBuilder)? updates]) =>
      (new FieldsRecordBuilder()..update(updates))._build();

  _$FieldsRecord._({this.displayName, this.uid, required this.area, this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(area, r'FieldsRecord', 'area');
  }

  @override
  FieldsRecord rebuild(void Function(FieldsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldsRecordBuilder toBuilder() => new FieldsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldsRecord &&
        displayName == other.displayName &&
        uid == other.uid &&
        area == other.area &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldsRecord')
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('area', area)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FieldsRecordBuilder
    implements Builder<FieldsRecord, FieldsRecordBuilder> {
  _$FieldsRecord? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  AreaStructBuilder? _area;
  AreaStructBuilder get area => _$this._area ??= new AreaStructBuilder();
  set area(AreaStructBuilder? area) => _$this._area = area;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FieldsRecordBuilder() {
    FieldsRecord._initializeBuilder(this);
  }

  FieldsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _uid = $v.uid;
      _area = $v.area.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FieldsRecord;
  }

  @override
  void update(void Function(FieldsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldsRecord build() => _build();

  _$FieldsRecord _build() {
    _$FieldsRecord _$result;
    try {
      _$result = _$v ??
          new _$FieldsRecord._(
              displayName: displayName,
              uid: uid,
              area: area.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        area.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FieldsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
