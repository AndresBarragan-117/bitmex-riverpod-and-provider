// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_book_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderBookEntry _$OrderBookEntryFromJson(Map<String, dynamic> json) {
  return _OrderBookEntry.fromJson(json);
}

/// @nodoc
mixin _$OrderBookEntry {
  double get price => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  bool get isBuy => throw _privateConstructorUsedError;

  /// Serializes this OrderBookEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderBookEntryCopyWith<OrderBookEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookEntryCopyWith<$Res> {
  factory $OrderBookEntryCopyWith(
    OrderBookEntry value,
    $Res Function(OrderBookEntry) then,
  ) = _$OrderBookEntryCopyWithImpl<$Res, OrderBookEntry>;
  @useResult
  $Res call({double price, double size, bool isBuy});
}

/// @nodoc
class _$OrderBookEntryCopyWithImpl<$Res, $Val extends OrderBookEntry>
    implements $OrderBookEntryCopyWith<$Res> {
  _$OrderBookEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? price = null, Object? size = null, Object? isBuy = null}) {
    return _then(
      _value.copyWith(
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as double,
            isBuy: null == isBuy
                ? _value.isBuy
                : isBuy // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderBookEntryImplCopyWith<$Res>
    implements $OrderBookEntryCopyWith<$Res> {
  factory _$$OrderBookEntryImplCopyWith(
    _$OrderBookEntryImpl value,
    $Res Function(_$OrderBookEntryImpl) then,
  ) = __$$OrderBookEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price, double size, bool isBuy});
}

/// @nodoc
class __$$OrderBookEntryImplCopyWithImpl<$Res>
    extends _$OrderBookEntryCopyWithImpl<$Res, _$OrderBookEntryImpl>
    implements _$$OrderBookEntryImplCopyWith<$Res> {
  __$$OrderBookEntryImplCopyWithImpl(
    _$OrderBookEntryImpl _value,
    $Res Function(_$OrderBookEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? price = null, Object? size = null, Object? isBuy = null}) {
    return _then(
      _$OrderBookEntryImpl(
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as double,
        isBuy: null == isBuy
            ? _value.isBuy
            : isBuy // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderBookEntryImpl implements _OrderBookEntry {
  const _$OrderBookEntryImpl({
    required this.price,
    required this.size,
    required this.isBuy,
  });

  factory _$OrderBookEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderBookEntryImplFromJson(json);

  @override
  final double price;
  @override
  final double size;
  @override
  final bool isBuy;

  @override
  String toString() {
    return 'OrderBookEntry(price: $price, size: $size, isBuy: $isBuy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBookEntryImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isBuy, isBuy) || other.isBuy == isBuy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, size, isBuy);

  /// Create a copy of OrderBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBookEntryImplCopyWith<_$OrderBookEntryImpl> get copyWith =>
      __$$OrderBookEntryImplCopyWithImpl<_$OrderBookEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderBookEntryImplToJson(this);
  }
}

abstract class _OrderBookEntry implements OrderBookEntry {
  const factory _OrderBookEntry({
    required final double price,
    required final double size,
    required final bool isBuy,
  }) = _$OrderBookEntryImpl;

  factory _OrderBookEntry.fromJson(Map<String, dynamic> json) =
      _$OrderBookEntryImpl.fromJson;

  @override
  double get price;
  @override
  double get size;
  @override
  bool get isBuy;

  /// Create a copy of OrderBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderBookEntryImplCopyWith<_$OrderBookEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
