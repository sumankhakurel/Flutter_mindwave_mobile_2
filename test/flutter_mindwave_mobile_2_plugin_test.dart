import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_mindwave_mobile_2_plugin/flutter_mindwave_mobile_2_plugin.dart';
import 'package:flutter_mindwave_mobile_2_plugin/flutter_mindwave_mobile_2_plugin_platform_interface.dart';
import 'package:flutter_mindwave_mobile_2_plugin/flutter_mindwave_mobile_2_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMindwaveMobile2PluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterMindwaveMobile2PluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMindwaveMobile2PluginPlatform initialPlatform = FlutterMindwaveMobile2PluginPlatform.instance;

  test('$MethodChannelFlutterMindwaveMobile2Plugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMindwaveMobile2Plugin>());
  });

  test('getPlatformVersion', () async {
    FlutterMindwaveMobile2Plugin flutterMindwaveMobile2Plugin = FlutterMindwaveMobile2Plugin();
    MockFlutterMindwaveMobile2PluginPlatform fakePlatform = MockFlutterMindwaveMobile2PluginPlatform();
    FlutterMindwaveMobile2PluginPlatform.instance = fakePlatform;

    expect(await flutterMindwaveMobile2Plugin.getPlatformVersion(), '42');
  });
}
