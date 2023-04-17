import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const yazareserde1());
}

class yazareserde1 extends StatefulWidget {
  const yazareserde1({Key? key}) : super(key: key);

  @override
  _yazareserde1State createState() => _yazareserde1State();
}

class _yazareserde1State extends State<yazareserde1> {
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
                  "Türk Dili ve Edebiyatı",
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
              Center(
                child: Text(
                  "Yazar - Eser",
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
                  "1• Günaydın Yeryüzü eseri İlhan Berk’ e aittir.",
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
                  "2• Deniz Eskisi eseri İlhan Berk’ e aittir.",
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
                  "3• Bir Bulut Geçti eseri İlhan Geçer’ e aittir.",
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
                  "4• Özlem Rıhtımı eseri İlhan Geçer’ e aittir.",
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
                  "5• Gerçek Hayali Aştı eseri Mehmet Çınarlı’ ya aittir.",
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
                  "6• Zaman Perdesi eseri Mehmet Çınarlı’ ya aittir.",
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
                  "7• Büyük Mabedin Eşiğinde eseri Munis Faik Ozansoy’ a aittir.",
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
                  "8• Zaman Saati eseri Munis Faik Ozansoy’ a aittir.",
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
                  "9• Alacakaranlık eseri Gültekin Samanoğlu’ na aittir.",
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
                  "10• Uzun Vuran Gölge eseri Gültekin Samanoğlu’ na aittir.",
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
                  "11• Bir Gün Baksam ki Gelmişsin eseri Yavuz Bülent Bakiler’ e aittir.",
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
                  "12• Gönlümdekiler ve Ötekiler eseri Yavuz Bülent Bakiler’ e aittir.",
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
                  "13• Bir Yağmur Başladı eseri Bekir Sıtkı Erdoğan’ a aittir.",
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
                  "14• Kışlada Bahar eseri Bekir Sıtkı Erdoğan’ a aittir.",
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
                  "15• Binbirinci Gece eseri Bekir Sıtkı Erdoğan’ a aittir.",
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
                  "16• Saatler ve Çehreler eseri Yahya Akengin’ e aittir.",
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
                  "17• Eylül Kuşatması eseri Yahya Akengin’ e aittir.",
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
                  "18• Özledim Yokuşları eseri Yahya Akengin’ e aittir.",
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
                  "19• Dönüş Acıları eseri Yahya Akengin’ e aittir.",
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
                  "20• Gençosman Destan eseri Niyazi Yıldırım Gençosmanoğlu’ na aittir.",
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
                  "21• Malazgirt Destanı eseri Niyazi Yıldırım Gençosmanoğlu’ na aittir.",
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
                  "22• Salur Kazan Destanı eseri Niyazi Yıldırım Gençosmanoğlu’ na aittir.",
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
                  "23• Boğaç Han Destanı eseri Niyazi Yıldırım Gençosmanoğlu’ na aittir.",
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
                  "24• Destanlarda Uyanmak eseri Niyazi Yıldırım Gençosmanoğlu’ na aittir.",
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
                  "25• Alperenler Destanı eseri Niyazi Yıldırım Gençosmanoğlu’ na aittir.",
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
                  "26• Ben Sana Mecburum eseri Atilla İlhan’ a aittir.",
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
                  "27• Sisler Bulvarı eseri Atilla İlhan’ a aittir.",
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
                  "28• Ayrılık Sevdaya Dahil eseri Atilla İlhan’ a aittir.",
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
                  "29• Gölgeleri Kullanmak eseri Ahmet Oktay’a aittir.",
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
                  "30• Her Yüz Bir Öykü Yazar eseri Ahmet Oktay’a aittir.",
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
                  "31• Ah Minel Aşk eseri Ferit Edgü’ ye aittir.",
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
                  "32• Eylülün Gölgesinde Bir Yazdı eseri Ferit Edgü’ ye aittir.",
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
                  "33• Esir Şehrin İnsanları eseri Kemal Tahir’ e aittir.",
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
                  "34• Esir Şehrin Mahpusu eseri Kemal Tahir’ e aittir.",
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
                  "35• Yorgun Savaşçı eseri Kemal Tahir’ e aittir.",
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
                  "36• Devlet Ana eseri Kemal Tahir’ e aittir.",
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
                  "37• Sağırdere eseri Kemal Tahir’ e aittir.",
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
                  "38• Bozkırdaki Çekirdek eseri Kemal Tahir’ e aittir.",
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
                  "39• Cemile eseri Orhan Kemal’ e aittir.",
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
                  "40• Murtaza eseri Orhan Kemal’ e aittir.",
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
                  "41• Bereketli Topraklar Üzerinde eseri Orhan Kemal’ e aittir.",
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
                  "41• Hanımın Çiftliği eseri Orhan Kemal’ e aittir.",
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
                  "42• Eskici ve Oğulları eseri Orhan Kemal’ e aittir.",
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
                  "43• Arkadaş Islıkları eseri Orhan Kemal’ e aittir.",
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
                  "44• Ağrı Dağı Efsanesi eseri Yaşar Kemal’ e aittir.",
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
                  "45• Demirciler Çarşısı Cinayeti eseri Yaşar Kemal’ e aittir.",
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
                  "46• İnce Memed eseri Yaşar Kemal’ e aittir.",
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
                  "47• Orta Direk eseri Yaşar Kemal’ e aittir.",
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
                  "48• Ölmez Otu eseri Yaşar Kemal’ e aittir.",
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
                  "49• Üç Anadolu Efsanesi eseri Yaşar Kemal’ e aittir.",
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
                  "50• Yer Demir Gök Bakır eseri Yaşar Kemal’ e aittir.",
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
                  "51• Yılanı Öldürseler eseri Yaşar Kemal’ e aittir.",
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
                  "52• Hababam Sınıfı eseri Rıfat Ilgaz’ aittir.",
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
                  "53• Karartma Geceleri eseri Rıfat Ilgaz’ aittir.",
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
                  "54• Pijamalılar (Bizim Koğuş) eseri Rıfat Ilgaz’ aittir.",
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
                  "55• Apartıman Çocukları eseri Rıfat Ilgaz’ aittir.",
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
                  "56• Fehim Bey ve Biz eseri Abdülhak Şinasi Hisar’ a aittir.",
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
                  "57• Çamlıca’daki Eniştemiz eseri Abdülhak Şinasi Hisar’ a aittir.",
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
                  "58• Küçük Ağa eseri Tarık Buğra’ ya aittir.",
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
                  "59• İbişin Rüyası eseri Tarık Buğra’ ya aittir.",
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
                  "60• Osmancık eseri Tarık Buğra’ ya aittir.",
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
                  "61• Yeşeren Otlar eseri Cahit Külebi’ ye aittir.",
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
                  "62• İçi Sevda Dolu Yolculuk eseri Cahit Külebi’ ye aittir.",
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
                  "63• Türk Mavisi eseri Cahit Külebi’ ye aittir.",
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
                  "64• Aganta Burina Burinata eseri Cevat Şakir Kabaağaçlı’ ya aittir.",
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
                  "65• Turgut Reis eseri Cevat Şakir Kabaağaçlı’ ya aittir.",
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
                  "66• Ayaşlı ile Kiracıları eseri Memduh Şevket Esendal’ a aittir.",
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
                  "67• Miras eseri Memduh Şevket Esendal’ a aittir.",
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
                  "68• Miras eseri Memduh Şevket Esendal’ a aittir.",
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
                  "69• Dila Hanım eseri Necati Cumalı’ na aittir.",
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
                  "70• Tütün Zamanı (Zeliş-Yağmurlarla Topraklar-Acı Tütün) eseri Necati Cumalı’ na aittir.",
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
                  "71• Karalama Defteri eseri Nurullah Ataç’ a aittir.",
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
                  "72• Söz Arasında eseri Nurullah Ataç’ a aittir.",
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
                  "73• Günlerin Getirdiği eseri Nurullah Ataç’ a aittir.",
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
                  "74• Huzur eseri Ahmet Hamdi Tanpınar’ a aittir.",
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
                  "75• Saatleri Ayarlama Enstitüsü eseri Ahmet Hamdi Tanpınar’ a aittir.",
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
                  "76• Beş Şehir eseri Ahmet Hamdi Tanpınar’ a aittir.",
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
                  "77• Evler eseri Behçet Necatigil’ e aittir.",
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
                  "78• İki Başına Yürümek eseri Behçet Necatigil’ e aittir.",
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
                  "79• Kareler Aklar eseri Behçet Necatigil’ e aittir.",
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
                  "80• Sevgilerde eseri Behçet Necatigil’ e aittir.",
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
                  "81• Çocuk ve Allah eseri Fazıl Hüsnü Dağlarca’ ya aittir.",
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
                  "82• Çocuk ve Allah eseri Fazıl Hüsnü Dağlarca’ ya aittir.",
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
                  "83• Üç Şehitler Destanı eseri Fazıl Hüsnü Dağlarca’ ya aittir.",
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
                  "84• Yedi Memetler eseri Fazıl Hüsnü Dağlarca’ ya aittir.",
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
                  "85• Çanakkale Destanı eseri Fazıl Hüsnü Dağlarca’ ya aittir.",
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
                  "86• İstanbul-Fetih Destanı eseri Fazıl Hüsnü Dağlarca’ ya aittir.",
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
                  "87• 19 Mayıs Destanı eseri Fazıl Hüsnü Dağlarca’ ya aittir.",
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
                  "88• Ömrümde Sükût eseri Cahit Sıtkı Tarancı’ ya aittir.",
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
                  "89• Otuz Beş Yaş eseri Cahit Sıtkı Tarancı’ ya aittir.",
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
                  "90• Düşten Güzel eseri Cahit Sıtkı Tarancı’ ya aittir.",
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
                  "91• Kırık saz eseri Ahmet Muhip Dıranas’ a aittir.",
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
                  "92• Kuyucaklı Yusuf eseri Sabahattin Ali’ ye aittir.",
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
                  "93• Kürk Mantolu Madonna eseri Sabahattin Ali’ ye aittir.",
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
                  "94• Tutunamayanlar eseri Oğuz Atay’ a aittir.",
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
                  "95• Kurtuluş Savaşı Destanı eseri Orhan Asena’ ya aittir.",
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
                  "96• Fadik Kız eseri Orhan Asena’ ya aittir.",
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
                  "97• Mesih Paşa İmamı eseri Samiha Ayverdi’ ye aittir.",
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
                  "98• İbrahim Efendi Konağı eseri Samiha Ayverdi’ ye aittir.",
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
                  "99• Aylak Adam eseri Yusuf Atılgan’ a aittir.",
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
                  "100• Anayurt Oteli eseri Yusuf Atılgan’ a aittir.",
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
                  "101• Yılanların Öcü eseri Fakir Baykurt’ a aittir.",
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
                  "102• Irazca’ nın Dirliği eseri Fakir Baykurt’ a aittir.",
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
                  "103• Kaplumbağalar eseri Fakir Baykurt’ a aittir.",
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
                  "104• Köygöçüren eseri Fakir Baykurt’ a aittir.",
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
                  "105• Bir Bayrak Rüzgar Bekliyor eseri Arif Nihat Asya’ ya aittir.",
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
                  "106• Dualar ve Aminler eseri Arif Nihat Asya’ ya aittir.",
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
                  "107• Gurbet eseri Kemalettin Kamu’ ya aittir.",
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
                  "108• Bingöl Çobanları eseri Kemalettin Kamu’ ya aittir.",
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
                  "109• Yayla Dumanı eseri Ömer Bedrettin Uşaklı’ ya aittir.",
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
                  "110• Sarıkız Mermerleri eseri Ömer Bedrettin Uşaklı’ ya aittir.",
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
                  "111• Kaldırımlar eseri Necip Fazıl Kısakürek’ e aittir.",
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
                  "112• Örümcek Ağı eseri Necip Fazıl Kısakürek’ e aittir.",
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
                  "113• Denizden Çalınmış Ülke eseri Zeki Ömer Defne’ ye aittir.",
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
                  "114• Ziller Çalacak eseri Zeki Ömer Defne’ ye aittir.",
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
                  "115• Dokuzuncu Hariciye Koğuşu eseri Peyami Safa’ ya aittir.",
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
                  "116• Fatih-Harbiye eseri Peyami Safa’ ya aittir.",
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
                  "117• Bir Tereddüdün Romanı eseri Peyami Safa’ ya aittir.",
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
                  "118• Yalnızız eseri Peyami Safa’ ya aittir.",
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
                  "119• Sözde Kızlar eseri Peyami Safa’ ya aittir.",
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
                  "120• Matmazel Noraliya'nın Koltuğu eseri Peyami Safa’ ya aittir.",
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
                  "121• Keşanlı Ali Destanı eseri Haldun Taner’ e aittir.",
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
                  "122• Semaver eseri Sait Faik Abasıyanık’ a aittir.",
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
                  "123• Sarnıç eseri Sait Faik Abasıyanık’ a aittir.",
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
                  "124• Şahmerdan eseri Sait Faik Abasıyanık’ a aittir.",
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
                  "125• Şahmerdan eseri Sait Faik Abasıyanık’ a aittir.",
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
                  "126• Bir Şoförün Gizli Defteri eseri Aka Gündüz’ e aittir.",
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
                  "127• Sokakta eseri Bahaeddin Özkişi’ ye aittir.",
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
                  "128• Uçtaki Adam eseri Bahaeddin Özkişi’ ye aittir.",
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
                  "129• Yedi Güzel Adam eseri Cahit Zarifoğlu’ na aittir.",
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
                  "130• Korku ve Yakarış eseri Cahit Zarifoğlu’ na aittir.",
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
                  "131• Sebep Ey eseri Erdem Beyazıt’ a aittir.",
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
                  "132• Yalnızlık Paylaşılmaz eseri Özdemir Asaf’ a aittir.",
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
                  "133• Dünya Kaçtı Gözüme eseri Özdemir Asaf’ a aittir.",
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
                  "134• Gül Yetiştiren Adam eseri Rasim Özenören’ e aittir.",
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
                  "135• Hastalar ve Işıklar eseri Rasim Özenören’ e aittir.",
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
                  "136• Çok Sesli Bir Ölüm eseri Rasim Özenören’ e aittir.",
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
                  "137• Ölmeye Yatmak eseri Adalet Ağaoğlu’ na aittir.",
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
                  "138• Memo eseri Kemal Bilbaşar’ a aittir.",
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
                  "139• Cemo eseri Kemal Bilbaşar’ a aittir.",
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
                  "140• Sarı Traktör eseri Talip Apaydın’ a aittir.",
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
                  "141• Define eseri Talip Apaydın’ a aittir.",
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
                  "142• Parasız Yatılı eseri Füruzan’ a aittir.",
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
                  "143• Küçük Dünya eseri Emine Işınsu‘ ya aittir.",
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
                  "144• Azap Toprakları eseri Emine Işınsu‘ ya aittir.",
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
                  "145• Azap Toprakları eseri Emine Işınsu‘ ya aittir.",
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
                  "146• Korsan Çıkmazı eseri Nezihe Meriç’ e aittir.",
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
                  "147• Bir Kara Derin Kuyu eseri Nezihe Meriç’ e aittir.",
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
                  "148• Kara Kitap eseri Orhan Pamuk’ a aittir.",
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
                  "149• Yeni Hayat eseri Orhan Pamuk’ a aittir.",
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
                  "150• Benim Adım Kırmızı eseri Orhan Pamuk’ a aittir.",
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
