import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  FirebaseNotificationService._();

  static final FirebaseNotificationService instance = FirebaseNotificationService._();


  Future<void> initialize() async {
   await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

   //foreground
   FirebaseMessaging.onMessage.listen((RemoteMessage massage) {
     print(massage.notification?.title);
     print(massage.notification?.body);
     print(massage.data);
   });

   //background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage massage) {
      print(massage.notification?.title);
      print(massage.notification?.body);
      print(massage.data);
    });

    FirebaseMessaging.onBackgroundMessage(doNothing);
    String? token = await getToken();
    print(token);
  }

  Future<String?> getToken() async {
    String? token = await _firebaseMessaging.getToken();

    return token;
  }

  Future<void> onRefreshToken() async{
    _firebaseMessaging.onTokenRefresh.listen((token){

    });
    //call api that sends the token to send new token
  }

  Future<void> doNothing(RemoteMessage remoteMassage) async{

  }

}