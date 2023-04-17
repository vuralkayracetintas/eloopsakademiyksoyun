import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const tryazimyanlisi());
}

class tryazimyanlisi extends StatefulWidget {
  const tryazimyanlisi({Key? key}) : super(key: key);

  @override
  _tryazimyanlisiState createState() => _tryazimyanlisiState();
}

class _tryazimyanlisiState extends State<tryazimyanlisi> {
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
            ? Container(
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
                  "1• Harem selamlık",
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
                  "2• Hatırım",
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
                  "3• ilk yardım",
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
                  "4• Ezkaza",
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
                  "5• Acayip",
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
                  "6• Ahbap",
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
                  "7• Direkt",
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
                  "8• Doküman",
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
                  "9• Müteahhit",
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
                  "10• Afili",
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
                  "11• Alerji",
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
                  "12• Kupür",
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
                  "13• Altyapı",
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
                  "14• Anbean",
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
                  "15• Bahçıvan",
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
                  "16• Atatürkçülüğü",
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
                  "17• Ataş",
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
                  "18• Cereyan",
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
                  "19• Cop",
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
                  "20• Egzoz",
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
                  "21• Espri",
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
                  "22• Doğal gaz",
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
                  "23• Distribütör",
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
                  "24• Bilinçaltı",
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
                  "25• Birader",
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
                  "26• Falan",
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
                  "27• Fasulye",
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
                  "28• Garaz",
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
                  "29• Hemfikir",
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
                  "30• illüzyon",
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
                  "31• Kapüşon",
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
                  "32• Kara yolu",
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
                  "33• Katetmek",
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
                  "34• Karmakarışık",
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
                  "35• Kolonya",
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
                  "36• Kontör",
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
                  "37• Kravat",
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
                  "38• Konservatuvar",
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
                  "39• Lakayıt",
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
                  "40• Menetmek",
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
                  "41• Menopoz",
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
                  "42• Mevta",
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
                  "43• Metot",
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
                  "44• Metcezir",
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
                  "45• Menemen",
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
                  "46• Ropdöşambır",
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
                  "47• Silahşor",
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
                  "48• Yayımlamak",
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
                  "49• Doküman",
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
                  "50• Hiçbir",
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
                  "51• Hafta içi",
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
                  "52• Koreografi",
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
                  "53• Müsaade",
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
                  "54• Pek az",
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
                  "55• Yanı sıra",
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
                  "56• Tespit",
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
                  "57• Sohbet",
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
                  "58• Şoför",
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
                  "59• Tıraş",
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
                  "60• Makine",
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
                  "61• ",
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
                  "62• İnisiyatif",
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
                  "63• Kulüp",
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
                  "64• Mademki",
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
                  "65• Maalesef",
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
                  "66• İddia",
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
                  "67• Hiç kimse",
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
                  "68• Hoş geldin",
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
                  "69• Her gün",
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
                  "70• Bugün",
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
                  "71• Tramvay",
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
                  "72• Testosteron",
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
                  "73• Teneffüs",
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
                  "74• Rastlantı",
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
                  "75• Tespit",
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
                  "76• Tespit",
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
                  "77• Poliklinik",
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
                  "78• Resmigeçit",
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
                  "79• Seremoni",
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
                  "80• Suçüstü",
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
                  "81• Herhalde",
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
                  "82• Tabii ki",
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
                  "83• Her biri",
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
                  "84• Espri",
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
                  "85• Tespih",
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
                  "86• Tasdik",
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
                  "87• Tahterevalli",
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
                  "88• Sarımsak",
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
                  "89• Perakende",
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
                  "90• Paunt",
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
                  "91• Panorama",
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
                  "92• Müshil",
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
                  "93• Pelüş",
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
                  "94• Perende",
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
                  "95• Meteoroloji",
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
                  "96• Maalesef",
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
                  "97• Maydanoz",
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
                  "98• Menajer",
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
                  "99• Laboratuvar",
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
                  "100• Lanet",
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
                  "101• Mademki",
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
                  "102• Konteyner",
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
                  "103• Komodin",
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
                  "104• Koreografi",
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
                  "105• Küfretmek",
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
                  "106• Mahcup",
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
                  "107• Mentalite",
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
                  "108• Mescit",
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
                  "109• Muhatap",
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
                  "110• Panikatak",
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
                  "111• Cip",
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
                  "112• Darbetmek",
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
                  "113• Bisküvi",
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
                  "114• Vazgeçmek",
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
                  "115• Yan yana",
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
                  "116• Antrenman",
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
                  "117• Art arda",
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
                  "118• Eşantiyon",
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
                  "119• Bilumum",
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
                  "120• Şofben",
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
                  "121• Menopoz",
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
                  "122• Aferin",
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
                  "123• Aforoz",
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
                  "124• Zanaat",
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
                  "125• Akıbet",
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
                  "126• Ajitasyon",
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
                  "127• Ukde",
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
                  "128• Akupunktur",
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
                  "129• Allahuteala",
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
                  "130• Altmış",
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
                  "131• Erozyon",
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
                  "132• Adale",
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
                  "133• Amfi",
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
                  "134• İzmitli",
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
                  "135• Apandisit",
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
                  "136• Aperitif",
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
                  "137• Eşofman",
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
                  "138• Eşek",
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
                  "139• Entelektüel",
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
                  "140• Defolmak",
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
