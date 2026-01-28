// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_book_state.dart';

class OrderBookStateMapper extends ClassMapperBase<OrderBookState> {
  OrderBookStateMapper._();

  static OrderBookStateMapper? _instance;
  static OrderBookStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderBookStateMapper._());
      OrderBookEntryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrderBookState';

  static List<OrderBookEntry> _$buys(OrderBookState v) => v.buys;
  static const Field<OrderBookState, List<OrderBookEntry>> _f$buys = Field(
    'buys',
    _$buys,
  );
  static List<OrderBookEntry> _$sells(OrderBookState v) => v.sells;
  static const Field<OrderBookState, List<OrderBookEntry>> _f$sells = Field(
    'sells',
    _$sells,
  );

  @override
  final MappableFields<OrderBookState> fields = const {
    #buys: _f$buys,
    #sells: _f$sells,
  };

  static OrderBookState _instantiate(DecodingData data) {
    return OrderBookState(buys: data.dec(_f$buys), sells: data.dec(_f$sells));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderBookState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderBookState>(map);
  }

  static OrderBookState fromJson(String json) {
    return ensureInitialized().decodeJson<OrderBookState>(json);
  }
}

mixin OrderBookStateMappable {
  String toJson() {
    return OrderBookStateMapper.ensureInitialized().encodeJson<OrderBookState>(
      this as OrderBookState,
    );
  }

  Map<String, dynamic> toMap() {
    return OrderBookStateMapper.ensureInitialized().encodeMap<OrderBookState>(
      this as OrderBookState,
    );
  }

  OrderBookStateCopyWith<OrderBookState, OrderBookState, OrderBookState>
  get copyWith => _OrderBookStateCopyWithImpl<OrderBookState, OrderBookState>(
    this as OrderBookState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return OrderBookStateMapper.ensureInitialized().stringifyValue(
      this as OrderBookState,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrderBookStateMapper.ensureInitialized().equalsValue(
      this as OrderBookState,
      other,
    );
  }

  @override
  int get hashCode {
    return OrderBookStateMapper.ensureInitialized().hashValue(
      this as OrderBookState,
    );
  }
}

extension OrderBookStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderBookState, $Out> {
  OrderBookStateCopyWith<$R, OrderBookState, $Out> get $asOrderBookState =>
      $base.as((v, t, t2) => _OrderBookStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrderBookStateCopyWith<$R, $In extends OrderBookState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    OrderBookEntry,
    OrderBookEntryCopyWith<$R, OrderBookEntry, OrderBookEntry>
  >
  get buys;
  ListCopyWith<
    $R,
    OrderBookEntry,
    OrderBookEntryCopyWith<$R, OrderBookEntry, OrderBookEntry>
  >
  get sells;
  $R call({List<OrderBookEntry>? buys, List<OrderBookEntry>? sells});
  OrderBookStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _OrderBookStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderBookState, $Out>
    implements OrderBookStateCopyWith<$R, OrderBookState, $Out> {
  _OrderBookStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderBookState> $mapper =
      OrderBookStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    OrderBookEntry,
    OrderBookEntryCopyWith<$R, OrderBookEntry, OrderBookEntry>
  >
  get buys => ListCopyWith(
    $value.buys,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(buys: v),
  );
  @override
  ListCopyWith<
    $R,
    OrderBookEntry,
    OrderBookEntryCopyWith<$R, OrderBookEntry, OrderBookEntry>
  >
  get sells => ListCopyWith(
    $value.sells,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(sells: v),
  );
  @override
  $R call({List<OrderBookEntry>? buys, List<OrderBookEntry>? sells}) => $apply(
    FieldCopyWithData({
      if (buys != null) #buys: buys,
      if (sells != null) #sells: sells,
    }),
  );
  @override
  OrderBookState $make(CopyWithData data) => OrderBookState(
    buys: data.get(#buys, or: $value.buys),
    sells: data.get(#sells, or: $value.sells),
  );

  @override
  OrderBookStateCopyWith<$R2, OrderBookState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrderBookStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

