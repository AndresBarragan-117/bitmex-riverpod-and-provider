// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_book_entry.dart';

class OrderBookEntryMapper extends ClassMapperBase<OrderBookEntry> {
  OrderBookEntryMapper._();

  static OrderBookEntryMapper? _instance;
  static OrderBookEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderBookEntryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderBookEntry';

  static double _$price(OrderBookEntry v) => v.price;
  static const Field<OrderBookEntry, double> _f$price = Field('price', _$price);
  static double _$size(OrderBookEntry v) => v.size;
  static const Field<OrderBookEntry, double> _f$size = Field('size', _$size);
  static bool _$isBuy(OrderBookEntry v) => v.isBuy;
  static const Field<OrderBookEntry, bool> _f$isBuy = Field('isBuy', _$isBuy);

  @override
  final MappableFields<OrderBookEntry> fields = const {
    #price: _f$price,
    #size: _f$size,
    #isBuy: _f$isBuy,
  };

  static OrderBookEntry _instantiate(DecodingData data) {
    return OrderBookEntry(
      price: data.dec(_f$price),
      size: data.dec(_f$size),
      isBuy: data.dec(_f$isBuy),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OrderBookEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderBookEntry>(map);
  }

  static OrderBookEntry fromJson(String json) {
    return ensureInitialized().decodeJson<OrderBookEntry>(json);
  }
}

mixin OrderBookEntryMappable {
  String toJson() {
    return OrderBookEntryMapper.ensureInitialized().encodeJson<OrderBookEntry>(
      this as OrderBookEntry,
    );
  }

  Map<String, dynamic> toMap() {
    return OrderBookEntryMapper.ensureInitialized().encodeMap<OrderBookEntry>(
      this as OrderBookEntry,
    );
  }

  OrderBookEntryCopyWith<OrderBookEntry, OrderBookEntry, OrderBookEntry>
  get copyWith => _OrderBookEntryCopyWithImpl<OrderBookEntry, OrderBookEntry>(
    this as OrderBookEntry,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return OrderBookEntryMapper.ensureInitialized().stringifyValue(
      this as OrderBookEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrderBookEntryMapper.ensureInitialized().equalsValue(
      this as OrderBookEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return OrderBookEntryMapper.ensureInitialized().hashValue(
      this as OrderBookEntry,
    );
  }
}

extension OrderBookEntryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderBookEntry, $Out> {
  OrderBookEntryCopyWith<$R, OrderBookEntry, $Out> get $asOrderBookEntry =>
      $base.as((v, t, t2) => _OrderBookEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrderBookEntryCopyWith<$R, $In extends OrderBookEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? price, double? size, bool? isBuy});
  OrderBookEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _OrderBookEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderBookEntry, $Out>
    implements OrderBookEntryCopyWith<$R, OrderBookEntry, $Out> {
  _OrderBookEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderBookEntry> $mapper =
      OrderBookEntryMapper.ensureInitialized();
  @override
  $R call({double? price, double? size, bool? isBuy}) => $apply(
    FieldCopyWithData({
      if (price != null) #price: price,
      if (size != null) #size: size,
      if (isBuy != null) #isBuy: isBuy,
    }),
  );
  @override
  OrderBookEntry $make(CopyWithData data) => OrderBookEntry(
    price: data.get(#price, or: $value.price),
    size: data.get(#size, or: $value.size),
    isBuy: data.get(#isBuy, or: $value.isBuy),
  );

  @override
  OrderBookEntryCopyWith<$R2, OrderBookEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrderBookEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

