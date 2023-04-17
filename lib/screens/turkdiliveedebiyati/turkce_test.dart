import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../google_admob/ad_helper.dart';
import 'turkce_test_butonlar.dart';

const int maxFailedLoadAttempts = 3;

class turkdilivedebiyati extends StatefulWidget {
  const turkdilivedebiyati({Key? key}) : super(key: key);

  @override
  State<turkdilivedebiyati> createState() => _turkdilivedebiyatiState();
}

class _turkdilivedebiyatiState extends State<turkdilivedebiyati> {
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
                      "Türk Dili ve Edebiyatı Süreli Test",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                          fontSize: 18),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //Deneme
                    const sinav(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k1(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k3(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k31(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k2(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k4(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k5(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k6(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k7(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k8(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k9(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k10(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k11(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k12(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k13(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k14(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k15(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k16(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k17(),
                    const SizedBox(
                      height: 20,
                    ),
                    const k18(),
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
