// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/oyun/loading.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_function.dart';
import 'package:yksoyun_23_06_2022/main_splash.dart';
import 'package:yksoyun_23_06_2022/screens/biyoloji/biyoloji_test.dart';
import 'package:yksoyun_23_06_2022/screens/cografya/cografya_test.dart';
import 'package:yksoyun_23_06_2022/screens/ingilizce/ingilizce_test.dart';
import 'package:yksoyun_23_06_2022/screens/matematik/matematik_test.dart';
import 'package:yksoyun_23_06_2022/screens/turkce/turkce_test.dart';
import 'package:yksoyun_23_06_2022/screens/turkdiliveedebiyati/turkce_test.dart';
import 'package:yksoyun_23_06_2022/service/firebase_messaging_service.dart';
import 'package:yksoyun_23_06_2022/service/local_notification_service.dart';

import 'constants.dart';
import 'drawer/ataturk.dart';
import 'google_admob/ad_helper.dart';

const int maxFailedLoadAttempts = 3;

final service = FirebaseNotificationService();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  FirebaseMessaging.onBackgroundMessage(
      FirebaseNotificationService.backgroundMessage);
  LocalNotificationServices.initialize();

  await Firebase.initializeApp();
  await FirebaseMessaging.instance.subscribeToTopic('TOPIC');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-LooPsAkademi YKS OYUN',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const MainSplash(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BannerAd? _bottomBannerAd;
  bool _isBottomBannerAdLoaded = false;

  void _createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(onAdLoaded: (_) {
        setState(() {
          _isBottomBannerAdLoaded = true;
        });
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
    );
    _bottomBannerAd!.load();
  }

  final service = FirebaseNotificationService();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    _createBottomBannerAd();
    myAdFunction.createInterstitialAd();
    service.connectionNotification();
    super.initState();
  }

  @override
  void dispose() {
    _bottomBannerAd?.dispose();
    interstitialAd?.dispose();
    super.dispose();
  }

//1. baglanti buton

  late Future<void> _launched;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $url';
    }
  }
//2. baglanti buton

  late Future<void> _launchede;
  Future<void> _launchInBrowsere(Uri urle) async {
    if (!await launchUrl(
      urle,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $urle';
    }
  }
//3. baglanti buton

  late Future<void> _launchedee;
  Future<void> _launchInBrowseree(Uri urlee) async {
    if (!await launchUrl(
      urlee,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $urlee';
    }
  }

//4. baglanti buton
  late Future<void> _launchedeee;
  Future<void> _launchInBrowsereee(Uri urleee) async {
    if (!await launchUrl(
      urleee,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $urleee';
    }
  }

  //5. baglanti buton
  late Future<void> _butunicerikler;
  Future<void> _butunicerikler1(Uri urleeee) async {
    if (!await launchUrl(
      urleeee,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $urleeee';
    }
  }

  //6. baglanti buton
  late Future<void> _appler;
  Future<void> _appler1(Uri urleeeee) async {
    if (!await launchUrl(
      urleeeee,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $urleeeee';
    }
  }

//10. insta buton
  late Future<void> _insta;
  Future<void> _insta1(Uri urleeeee1123) async {
    if (!await launchUrl(
      urleeeee1123,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $urleeeee1123';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch =
        Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '');
    var size = MediaQuery.of(context).size;

    final Uri toLaunche = Uri(
        scheme: 'https',
        host: 'www.eloopsakademi.com',
        path: '/course-category/denemeler/');
    var sizee = MediaQuery.of(context).size;

    final Uri egitmenler = Uri(
        scheme: 'https', host: 'www.eloopsakademi.com', path: '/egitmenler/');
    var sizeee = MediaQuery.of(context).size;

    final Uri icerikler =
        Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '/kurslar/');
    var sizeeeee = MediaQuery.of(context).size;

    final Uri appler =
        Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '/katalog/');
    var sizeeeeee = MediaQuery.of(context).size;

    final Uri instagram = Uri(
        scheme: 'https', host: 'www.instagram.com', path: '/eloopsakademi/');
    var size23 = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: _isBottomBannerAdLoaded
          ? SizedBox(
              height: _bottomBannerAd!.size.height.toDouble(),
              width: _bottomBannerAd!.size.width.toDouble(),
              child: AdWidget(ad: _bottomBannerAd!),
            )
          : null,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.deepPurple),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "E-LooPsAkademi YKS OYUN",
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            SafeArea(
              child: Image.asset(
                "assets/gorsel/abcd.png",
                height: 150,
                width: 150,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                "Mustafa Kemal Atatürk",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Ataturk()));
              },
            ),
            ListTile(
              title: const Text("Diğer Uygulamalar"),
              onTap: () => setState(() {
                _appler = _appler1(appler);
              }),
            ),
            ListTile(
              title: const Text("Eğitim İçerikleri Tümü -Web-"),
              onTap: () => setState(() {
                _butunicerikler = _butunicerikler1(icerikler);
              }),
            ),
            ListTile(
              title: const Text("Eğitim Kurumları -WEB-"),
              onTap: () => setState(() {
                _launchedee = _launchInBrowser(egitmenler);
              }),
            ),
            ListTile(
              title: const Text("İnstagram"),
              onTap: () => setState(() {
                _insta = _insta1(instagram);
              }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16),
              child: Text(
                'YKS OYUN',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurpleAccent),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Image(
                    image: AssetImage("assets/images/ogrenci1.png"),
                  ),
                ]),
          )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),

                  //Kampanya Birimi Ust Bar

                  Text(
                    "Okul Eğitimi Odaklı",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.deepPurple,
                        fontSize: 20),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Text(
                        "Video",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.red),
                      ),
                      Text(
                        " İçerik Platformu",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),

                  Row(children: const <Widget>[
                    Expanded(child: Divider()),
                    Expanded(child: Divider()),
                  ]),
                  const SizedBox(height: 55),
                  Text(
                    "Dilediğin Eğitim Kurumundan",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.deepPurple,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Dilediğin Eğitime Ulaş",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.deepPurple,
                        fontSize: 20),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '#premiumhisset',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: .1,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          GestureDetector(
                            //Buton :) web
                            onTap: () => setState(() {
                              _launched = _launchInBrowser(toLaunch);
                            }),

                            child: Container(
                              width: 200, height: 280,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image: AssetImage("assets/gorsel/a.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Dijital Platform\n- WEB -",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            //Buton :) web
                            onTap: () => setState(() {
                              _launchede = _launchInBrowser(toLaunche);
                            }),

                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image: AssetImage("assets/gorsel/abc.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Online TYT-AYT Denemeler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            //Buton :) web
                            onTap: () {
                              myAdFunction.showInterstitialAd();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const biyoloji()));
                            },

                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image: AssetImage("assets/gorsel/ab.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Biyoloji Hızlı Testler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            //Buton :) web
                            onTap: () {
                              myAdFunction.showInterstitialAd();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const matematik()));
                            },

                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image:
                                        AssetImage("assets/gorsel/abcdea.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Matematik Hızlı Testler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              myAdFunction.showInterstitialAd();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailsScreen2()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(10),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image: AssetImage("assets/gorsel/abcd.png"),
                                    height: 90,
                                    width: 150,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Türkçe Hızlı Testler",
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            //Buton :) web
                            onTap: () {
                              myAdFunction.showInterstitialAd();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const turkdilivedebiyati()));
                            },

                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image:
                                        AssetImage("assets/gorsel/abcde.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Türk Dili ve Edebiyetı Hızlı Testler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            //Buton :) web
                            onTap: () {
                              myAdFunction.showInterstitialAd();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const cografya()));
                            },

                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image:
                                        AssetImage("assets/gorsel/abcdea.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "Coğrafya Hızlı Testler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            //Buton :) web
                            onTap: () {
                              myAdFunction.showInterstitialAd();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ingilizce()));
                            },

                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image: AssetImage("assets/gorsel/a.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "İngilizce Hızlı Testler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            //Buton :) web
                            onTap: () {
                              myAdFunction.showInterstitialAd();

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SplashScreenoyun()));
                            },

                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.all(8),

                              //Margin, komşular arası
                              //Padding kendi içi
                              // padding: EdgeInsets.all(25),
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image: AssetImage("assets/gorsel/ab.png"),
                                    height: 90,
                                    width: 120,
                                  ),
                                  Spacer(),
                                  Text(
                                    "OYUN",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 0.5,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



//todo reklam kodlarini duzenle 
