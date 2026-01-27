// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_book_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderBookEntryImpl _$$OrderBookEntryImplFromJson(Map<String, dynamic> json) =>
    _$OrderBookEntryImpl(
      price: (json['price'] as num).toDouble(),
      size: (json['size'] as num).toDouble(),
      isBuy: json['isBuy'] as bool,
    );

Map<String, dynamic> _$$OrderBookEntryImplToJson(
  _$OrderBookEntryImpl instance,
) => <String, dynamic>{
  'price': instance.price,
  'size': instance.size,
  'isBuy': instance.isBuy,
};
