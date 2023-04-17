import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const tryazimyanlisi1());
}

class tryazimyanlisi1 extends StatefulWidget {
  const tryazimyanlisi1({Key? key}) : super(key: key);

  @override
  _tryazimyanlisi1State createState() => _tryazimyanlisi1State();
}

class _tryazimyanlisi1State extends State<tryazimyanlisi1> {
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
    return Scaffold(
        bottomNavigationBar: _isBottomBannerAdLoaded
            ? SizedBox(
                height: _bottomBannerAd!.size.height.toDouble(),
                width: _bottomBannerAd!.size.width.toDouble(),
                child: AdWidget(ad: _bottomBannerAd!),
              )
            : null,
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.deepPurple),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "E-LooPsAkademi YKS OYUN",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(height: 15),
              Center(
                child: Text(
                  "Türkçe Doğru Yazımlar",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "1• Bana ne",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "2• Boy bos",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "3• Kitabevi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "4• Kılavuz",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "5• İnisiyatif",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "6• Mantalite",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "7• Nüfus",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "8• Oldubitti",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "9• Pirsing",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "10• Sezaryen",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "11• Repertuvar",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "12• Portmanto",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "13• Zarafet",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "14• Üslup",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "15• Unvan",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "16• Birçok",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "17• Çevrim içi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "18• Bir şey",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "19• Hafta sonu",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "20• Hak etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "21• Metot",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "22• Oysaki",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "23• Orada",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "24• Pek çok",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "25• Sarf etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "26• Sürahi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "27• Türkçede",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "28• Terk etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "29• Mütevazı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "30• Müstahak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "31• Burada",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "32• Mağdur",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "33• Fark etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "34• Vejetaryen",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "35• Bir arada",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "36• Tabildot",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "37• Soğukkanlı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "38• Pardösü",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "39• Antrparantez",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "40• Alüminyum",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "41• Aşçı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "42• Cıva",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "43• Dershane",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "44• Düzyazı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "45• Eşkıya",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "46• Farz etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "47• Eskaza",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "48• Floresan",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "49• İllaki",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "50• Gasbetmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "51• Gardırop",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "52• İnkılap",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "53• Katsayı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "54• Yalnız",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "55• Türkçenin",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "56• Sürpriz",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "57• Orijinal",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "58• El ele",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "59• Birkaç",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "60• Vadetmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "61• Üsteğmen",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "62• Tetanos",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "63• Tiroit",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "64• Üsteğmen",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "65• Zerafet",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "66• Direkt",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "67• Ara sıra",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "68• Acaip",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "69• Acente",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "70• Boa yılanı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "71• Kaparo",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "72• Unvan",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "73• Zarafet",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "74• Arife",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "75• Azerbaycan",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "76• Avro",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "77• Eksantrik",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "78• Fark etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "79• Hafriyat",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "E-LooPsAkademi, öğrenciler ne isterse onu yapar.",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "😍❤",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 130),
            ],
          ),
        ));
  }
}
