// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AreaStruct> _$areaStructSerializer = new _$AreaStructSerializer();

class _$AreaStructSerializer implements StructuredSerializer<AreaStruct> {
  @override
  final Iterable<Type> types = const [AreaStruct, _$AreaStruct];
  @override
  final String wireName = 'AreaStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AreaStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.color;
    if (value != null) {
      result
        ..add('Color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.bGColor;
    if (value != null) {
      result
        ..add('BGColor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.positions;
    if (value != null) {
      result
        ..add('Positions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    return result;
  }

  @override
  AreaStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AreaStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'BGColor':
          result.bGColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'Positions':
          result.positions = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$AreaStruct extends AreaStruct {
  @override
  final Color? color;
  @override
  final Color? bGColor;
  @override
  final LatLng? positions;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AreaStruct([void Function(AreaStructBuilder)? updates]) =>
      (new AreaStructBuilder()..update(updates))._build();

  _$AreaStruct._(
      {this.color,
      this.bGColor,
      this.positions,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AreaStruct', 'firestoreUtilData');
  }

  @override
  AreaStruct rebuild(void Function(AreaStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaStructBuilder toBuilder() => new AreaStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaStruct &&
        color == other.color &&
        bGColor == other.bGColor &&
        positions == other.positions &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, bGColor.hashCode);
    _$hash = $jc(_$hash, positions.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaStruct')
          ..add('color', color)
          ..add('bGColor', bGColor)
          ..add('positions', positions)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AreaStructBuilder implements Builder<AreaStruct, AreaStructBuilder> {
  _$AreaStruct? _$v;

  Color? _color;
  Color? get color => _$this._color;
  set color(Color? color) => _$this._color = color;

  Color? _bGColor;
  Color? get bGColor => _$this._bGColor;
  set bGColor(Color? bGColor) => _$this._bGColor = bGColor;

  LatLng? _positions;
  LatLng? get positions => _$this._positions;
  set positions(LatLng? positions) => _$this._positions = positions;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AreaStructBuilder() {
    AreaStruct._initializeBuilder(this);
  }

  AreaStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _bGColor = $v.bGColor;
      _positions = $v.positions;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AreaStruct;
  }

  @override
  void update(void Function(AreaStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaStruct build() => _build();

  _$AreaStruct _build() {
    final _$result = _$v ??
        new _$AreaStruct._(
            color: color,
            bGColor: bGColor,
            positions: positions,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'AreaStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
