// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/dogrucevaplar/load/loading2.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/dogrucevaplar/load/loading3.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/ingkarmali/load/loading1.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_function.dart';
import '../../constants.dart';
import '../../google_admob/ad_helper.dart';

const int maxFailedLoadAttempts = 3;

class sinav extends StatefulWidget {
  const sinav({
    Key? key,
  }) : super(key: key);

  @override
  State<sinav> createState() => _sinavState();
}

class _sinavState extends State<sinav> {
  @override
  Widget build(BuildContext context) {
    //1. baglanti buton

    Future<void> _launched;
    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Sanırım Arızalı $url';
      }
    }

    final Uri toLaunch = Uri(
        scheme: 'https',
        host: 'www.eloopsakademi.com',
        path: '/course-category/denemeler/');
    var size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => setState(() {
                _launched = _launchInBrowser(toLaunch);
              }),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/1.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Online TYT-AYT Denemeler",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

//Reklam
class k1 extends StatefulWidget {
  const k1({
    Key? key,
  }) : super(key: key);

  @override
  State<k1> createState() => _k1State();
}

class _k1State extends State<k1> {
  late Future<void> _launched;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Sanırım Arızalı $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch =
        Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '/kurslar/');

    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => setState(() {
                _launched = _launchInBrowser(toLaunch);
              }),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/1.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Dijital Eğitim Platformu\n-WEB-",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k2 extends StatefulWidget {
  const k2({
    Key? key,
  }) : super(key: key);

  @override
  State<k2> createState() => _k2State();
}

class _k2State extends State<k2> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/2.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 1",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k3 extends StatefulWidget {
  const k3({
    Key? key,
  }) : super(key: key);

  @override
  State<k3> createState() => _k3State();
}

class _k3State extends State<k3> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreening()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/3.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Doğru Cevap 1",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k31 extends StatefulWidget {
  const k31({
    Key? key,
  }) : super(key: key);

  @override
  State<k31> createState() => _k31State();
}

class _k31State extends State<k31> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreening1()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/3.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Doğru Cevap 2",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k4 extends StatefulWidget {
  const k4({
    Key? key,
  }) : super(key: key);

  @override
  State<k4> createState() => _k4State();
}

class _k4State extends State<k4> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/1.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 2",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k5 extends StatefulWidget {
  const k5({
    Key? key,
  }) : super(key: key);

  @override
  State<k5> createState() => _k5State();
}

class _k5State extends State<k5> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/2.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 3",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k6 extends StatefulWidget {
  const k6({
    Key? key,
  }) : super(key: key);

  @override
  State<k6> createState() => _k6State();
}

class _k6State extends State<k6> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/3.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 4",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k7 extends StatefulWidget {
  const k7({
    Key? key,
  }) : super(key: key);

  @override
  State<k7> createState() => _k7State();
}

class _k7State extends State<k7> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/1.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 5",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k8 extends StatefulWidget {
  const k8({
    Key? key,
  }) : super(key: key);

  @override
  State<k8> createState() => _k8State();
}

class _k8State extends State<k8> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/2.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 6",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k9 extends StatefulWidget {
  const k9({
    Key? key,
  }) : super(key: key);

  @override
  State<k9> createState() => _k9State();
}

class _k9State extends State<k9> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/3.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 7",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k10 extends StatefulWidget {
  const k10({
    Key? key,
  }) : super(key: key);

  @override
  State<k10> createState() => _k10State();
}

class _k10State extends State<k10> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/1.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 8",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k11 extends StatefulWidget {
  const k11({
    Key? key,
  }) : super(key: key);

  @override
  State<k11> createState() => _k11State();
}

class _k11State extends State<k11> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/2.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 9",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class k12 extends StatefulWidget {
  const k12({
    Key? key,
  }) : super(key: key);

  @override
  State<k12> createState() => _k12State();
}

class _k12State extends State<k12> {
  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
  }

  @override
  void initState() {
    super.initState();
    myAdFunction.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreenin2()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/3.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "İngilizce 10",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
