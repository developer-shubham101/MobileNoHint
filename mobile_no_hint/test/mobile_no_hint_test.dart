import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_no_hint/mobile_no_hint_method_channel.dart';
import 'package:mobile_no_hint/mobile_no_hint_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMobileNoHintPlatform
    with MockPlatformInterfaceMixin
    implements MobileNoHintPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MobileNoHintPlatform initialPlatform = MobileNoHintPlatform.instance;

  test('$MethodChannelMobileNoHint is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMobileNoHint>());
  });
}
