import 'package:flutter/material.dart';
import 'package:appinio_social_share/appinio_social_share.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppinioSocialShare appinioSocialShare = AppinioSocialShare();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Share Feature",
        home: Scaffold(
          body: Column(
            children: [
              ElevatedButton(
                child: const Text("shareToFacebook"),
                onPressed: () async { await shareToFacebook(); },
              ),
              ElevatedButton(
                child: const Text("shareToTwitter"),
                onPressed: () async { await shareToTwitter(); },
              ),
              ElevatedButton(
                child: const Text("shareToWeChat"),
                onPressed: () async { await shareToWeChat(); },
              ),
              ElevatedButton(
                child: const Text("ShareToQq"),
                onPressed: () async { await shareToQq(); },
              ),
              ElevatedButton(
                child: const Text("ShareToLine"),
                onPressed: () async { await shareToLine(); },
              ),
            ],
          ),
        ));
  }

  shareToFacebook()async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToFacebook('my first test share message',"/data/user/0/com.staking_power.mina_wallet/cache/OutputFile_1676955782263.jpeg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToTwitter() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToTwitter('my first test share message',filePath: "/data/user/0/com.staking_power.mina_wallet/cache/OutputFile_1676955782263.jpeg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToWeChat() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToWeChat('my first test share message',filePath: "/data/user/0/com.staking_power.mina_wallet/cache/OutputFile_1676955782263.jpeg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToQq() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToQq('my first test share message',filePath: "/data/user/0/com.staking_power.mina_wallet/cache/OutputFile_1676955782263.jpeg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToLine() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToLine('my first test share message',filePath: "/data/user/0/com.staking_power.mina_wallet/cache/OutputFile_1676955782263.jpeg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }
}
