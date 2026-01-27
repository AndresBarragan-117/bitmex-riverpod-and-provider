// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OrderBookState {
  List<OrderBookEntry> get buys => throw _privateConstructorUsedError;
  List<OrderBookEntry> get sells => throw _privateConstructorUsedError;

  /// Create a copy of OrderBookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderBookStateCopyWith<OrderBookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookStateCopyWith<$Res> {
  factory $OrderBookStateCopyWith(
    OrderBookState value,
    $Res Function(OrderBookState) then,
  ) = _$OrderBookStateCopyWithImpl<$Res, OrderBookState>;
  @useResult
  $Res call({List<OrderBookEntry> buys, List<OrderBookEntry> sells});
}

/// @nodoc
class _$OrderBookStateCopyWithImpl<$Res, $Val extends OrderBookState>
    implements $OrderBookStateCopyWith<$Res> {
  _$OrderBookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderBookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? buys = null, Object? sells = null}) {
    return _then(
      _value.copyWith(
            buys: null == buys
                ? _value.buys
                : buys // ignore: cast_nullable_to_non_nullable
                      as List<OrderBookEntry>,
            sells: null == sells
                ? _value.sells
                : sells // ignore: cast_nullable_to_non_nullable
                      as List<OrderBookEntry>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderBookStateImplCopyWith<$Res>
    implements $OrderBookStateCopyWith<$Res> {
  factory _$$OrderBookStateImplCopyWith(
    _$OrderBookStateImpl value,
    $Res Function(_$OrderBookStateImpl) then,
  ) = __$$OrderBookStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderBookEntry> buys, List<OrderBookEntry> sells});
}

/// @nodoc
class __$$OrderBookStateImplCopyWithImpl<$Res>
    extends _$OrderBookStateCopyWithImpl<$Res, _$OrderBookStateImpl>
    implements _$$OrderBookStateImplCopyWith<$Res> {
  __$$OrderBookStateImplCopyWithImpl(
    _$OrderBookStateImpl _value,
    $Res Function(_$OrderBookStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderBookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? buys = null, Object? sells = null}) {
    return _then(
      _$OrderBookStateImpl(
        buys: null == buys
            ? _value._buys
            : buys // ignore: cast_nullable_to_non_nullable
                  as List<OrderBookEntry>,
        sells: null == sells
            ? _value._sells
            : sells // ignore: cast_nullable_to_non_nullable
                  as List<OrderBookEntry>,
      ),
    );
  }
}

/// @nodoc

class _$OrderBookStateImpl implements _OrderBookState {
  const _$OrderBookStateImpl({
    required final List<OrderBookEntry> buys,
    required final List<OrderBookEntry> sells,
  }) : _buys = buys,
       _sells = sells;

  final List<OrderBookEntry> _buys;
  @override
  List<OrderBookEntry> get buys {
    if (_buys is EqualUnmodifiableListView) return _buys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buys);
  }

  final List<OrderBookEntry> _sells;
  @override
  List<OrderBookEntry> get sells {
    if (_sells is EqualUnmodifiableListView) return _sells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sells);
  }

  @override
  String toString() {
    return 'OrderBookState(buys: $buys, sells: $sells)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBookStateImpl &&
            const DeepCollectionEquality().equals(other._buys, _buys) &&
            const DeepCollectionEquality().equals(other._sells, _sells));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_buys),
    const DeepCollectionEquality().hash(_sells),
  );

  /// Create a copy of OrderBookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBookStateImplCopyWith<_$OrderBookStateImpl> get copyWith =>
      __$$OrderBookStateImplCopyWithImpl<_$OrderBookStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OrderBookState implements OrderBookState {
  const factory _OrderBookState({
    required final List<OrderBookEntry> buys,
    required final List<OrderBookEntry> sells,
  }) = _$OrderBookStateImpl;

  @override
  List<OrderBookEntry> get buys;
  @override
  List<OrderBookEntry> get sells;

  /// Create a copy of OrderBookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderBookStateImplCopyWith<_$OrderBookStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
