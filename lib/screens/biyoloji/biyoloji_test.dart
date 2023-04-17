import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_function.dart';
import '../../google_admob/ad_helper.dart';
import 'biyoloji_test_butonlar.dart';

const int maxFailedLoadAttempts = 3;

class biyoloji extends StatefulWidget {
  const biyoloji({Key? key}) : super(key: key);

  @override
  State<biyoloji> createState() => _biyolojiState();
}

class _biyolojiState extends State<biyoloji> {
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

  @override
  void initState() {
    super.initState();
    _createBottomBannerAd();
  }

  @override
  void dispose() {
    super.dispose();
    _bottomBannerAd!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          "E-LooPsAkademi",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0x00f7faff),
              image: DecorationImage(
                image: AssetImage("assets/images/ogrenci.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const Image(
                      image: AssetImage("assets/images/eloopslogo.png"),
                      height: 80,
                      width: 250,
                    ),

                    const SizedBox(height: 30),
                    const Text(
                      "Dilediğin Eğitim Kurumundan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: const Text(
                        "Dilediğin Eğitime Kolayca Ulaşmana ve Yıllık Eğitim Maliyetini %70 Oranında Düşürmene Olanak Sağlıyor",
                      ),
                    ),
                    const SizedBox(height: 30),

                    const Text(
                      "Biyoloji Süreli Test",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                          fontSize: 18),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //Deneme
                    const sinav(
                      k: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k1(
                      k: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k3(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k2(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k4(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k5(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k6(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k7(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k8(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k9(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k10(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k11(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const k12(
                      ka: 1,
                      isDonek: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const SizedBox(height: 50),
                    Text(
                      "E-LooPsAkademi, öğrenciler ne isterse onu yapar.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
