import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

class BitmexWsService {
  late final WebSocketChannel _channel;

  BitmexWsService() {
    _channel = WebSocketChannel.connect(
      Uri.parse('wss://ws.bitmex.com/realtime'),
    );

    _channel.sink.add(jsonEncode({
      "op": "subscribe",
      "args": ["orderBookL2_25:XBTUSD"]
    }));
  }

  Stream<dynamic> get stream => _channel.stream;

  void dispose() {
    _channel.sink.close();
  }
}
