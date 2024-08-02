import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mobile_no_hint_method_channel.dart';

abstract class MobileNoHintPlatform extends PlatformInterface {
  /// Constructs a MobileNoHintPlatform.
  MobileNoHintPlatform() : super(token: _token);

  static final Object _token = Object();

  static MobileNoHintPlatform _instance = MethodChannelMobileNoHint();

  /// The default instance of [MobileNoHintPlatform] to use.
  ///
  /// Defaults to [MethodChannelMobileNoHint].
  static MobileNoHintPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MobileNoHintPlatform] when
  /// they register themselves.
  static set instance(MobileNoHintPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
