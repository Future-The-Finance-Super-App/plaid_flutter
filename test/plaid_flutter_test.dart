import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:plaid_flutter/plaid_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('plaid_flutter');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {});
}
