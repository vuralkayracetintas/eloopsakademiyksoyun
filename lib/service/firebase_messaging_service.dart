import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:yksoyun_23_06_2022/service/local_notification_service.dart';

class FirebaseNotificationService {
  late final FirebaseMessaging messaging;

  void settingNotification() async {
    await messaging.requestPermission(
      alert: true,
      sound: true,
      badge: true,
    );
  }

  void connectionNotification() async {
    await Firebase.initializeApp();

    FirebaseMessaging.onBackgroundMessage(
        backgroundMessage); // sonradan eklendi
    messaging = FirebaseMessaging.instance;

    messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    settingNotification();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      // print('Gelen bildirim basligi ${message.notification?.title}');
      // print('message title ${message.notification?.body}');
      // LocalNotificationServices.createNotification(message);

      if (message.notification != null) {
        print(
            'messege also contained a notification : ${message.notification}');
        print('Gelen bildirim basligi ${message.notification!.title}');
        print('message title ${message.notification!.body}');
        LocalNotificationServices.createNotification(message);
      }
    });
    messaging
        .getToken()
        .then((value) => log('Token : $value', name: 'FCM token'));
  }

  static Future<void> backgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();

    print('handling background message ${message.messageId}');
  }
}
