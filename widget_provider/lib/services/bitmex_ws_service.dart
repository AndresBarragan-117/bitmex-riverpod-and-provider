import 'package:web_socket_channel/web_socket_channel.dart';

class BitmexWsService {
  final WebSocketChannel _channel;

  BitmexWsService()
    : _channel = WebSocketChannel.connect(
        Uri.parse(
          'wss://www.bitmex.com/realtime?subscribe=orderBookL2_25:XBTUSD',
        ),
      );

  Stream<dynamic> get stream => _channel.stream;

  void dispose() {
    _channel.sink.close();
  }
}
