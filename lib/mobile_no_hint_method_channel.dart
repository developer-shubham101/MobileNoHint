import 'package:flutter/services.dart';

import 'mobile_no_hint_platform_interface.dart';

/// An implementation of [MobileNoHintPlatform] that uses method channels.
class MethodChannelMobileNoHint extends MobileNoHintPlatform {
  /// The method channel used to interact with the native platform.
  // @visibleForTesting
  final methodChannel = const MethodChannel('mobile_no_hint');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
