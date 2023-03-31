// Dart imports:
//dart program
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Start a live'),
              onPressed: () => jumpToLivePage(context, isHost: true),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Watch a live'),
              onPressed: () => jumpToLivePage(context, isHost: false),
            ),
          ],
        ),
      ),
    );
  }

  void jumpToLivePage(BuildContext context, {required bool isHost}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LivePage(isHost: isHost)),
    );
  }
}

final String userID = Random().nextInt(10000).toString();

class LivePage extends StatelessWidget {
  const LivePage({Key? key, this.isHost = false}) : super(key: key);
  final bool isHost;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 455325124,
        appSign: '0d9ff8110b5376b74925b105efa9bcc4fd56f7e62a15a6b0b939b5ac85c0dba8',
        userID: userID,
        userName: 'user_$userID',
        liveID: "testLiveID",
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
