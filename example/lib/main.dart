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
              ElevatedButton(
                child: const Text("ShareToDiscord"),
                onPressed: () async { await shareToDiscord(); },
              ),
              ElevatedButton(
                child: const Text("getInstall"),
                onPressed: () async { await getInstall(); },
              ),
            ],
          ),
        ));
  }

  shareToFacebook()async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToFacebook('my first test share message',"/storage/emulated/0/DCIM/Camera/IMG_20230303_115155.jpg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToTwitter() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToTwitter('my first test share message',filePath: "/storage/emulated/0/DCIM/Camera/IMG_20230303_115155.jpg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToWeChat() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToWeChat('my first test share message',filePath: "/storage/emulated/0/DCIM/Camera/IMG_20230303_115155.jpg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToQq() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToQq('my first test share message',filePath: "/storage/emulated/0/DCIM/Camera/IMG_20230303_115155.jpg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  shareToLine() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToLine('my first test share message',filePath: "/storage/emulated/0/DCIM/Camera/IMG_20230303_115155.jpg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }


  shareToDiscord() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    String response = await appinioSocialShare.shareToDiscord('my first test share message',filePath: "/storage/emulated/0/DCIM/Camera/IMG_20230303_115155.jpg");
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }

  getInstall() async {
    // String response = await appinioSocialShare.shareToFacebookStory('1312443126001084');
    print("22222222");
    Map response = await appinioSocialShare.getInstalledApps();
    print("111111");
    print(response);
    // await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }
}
