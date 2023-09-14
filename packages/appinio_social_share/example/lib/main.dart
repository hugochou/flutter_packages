import 'package:appinio_social_share/appinio_social_share.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

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
          appBar: AppBar(title: Text('Share Feature')),
          body: Column(
            children: [
              ElevatedButton(
                child: const Text("ShareToWhatsapp"),
                onPressed: () {
                  appinioSocialShare.shareToFacebook("Message Text!!",
                      '/storage/emulated/0/Android/data/com.lisgo.app/files/media_manager/6604182d-48f4-4e74-b054-5cd32c030f5a.png');
                },
              ),
            ],
          ),
        ));
  }

  shareToWhatsApp(String message, String filePath) async {
    await appinioSocialShare.shareToWhatsapp(message, filePath: filePath);
  }
}
