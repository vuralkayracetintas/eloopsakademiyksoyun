import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_helper.dart';

class biyodogrucevap extends StatefulWidget {
  const biyodogrucevap({Key? key}) : super(key: key);

  @override
  _biyodogrucevapState createState() => _biyodogrucevapState();
}

class _biyodogrucevapState extends State<biyodogrucevap> {
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
                  "Biyoloji Doğru Cevaplar",
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
                  "1• Prokaryotların tamamı tek hücrelidir fakat tek hücrelilerin tamamı prokaryot değildir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "2• Fotosentez yapım olayıdır fakat dehidrasyon değildir",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "3• Fotosentez yapım olayıdır fakat dehidrasyon değildir",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "4•  Pasif taşıma ve hidroliz dışındaki biyokimyasal olaylarda ATP kullanılır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "5• Öglenanın ışığa doğru hareketi aktif, alglerin suyun içindeki hareketi pasif harekettir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "6• İnorganik maddelerin, organik maddeye dönüşümü ototrof canlılarda gerçekleşir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "7• İnorganik maddeleri hiçbir canlı kendisi üretemez.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "8•  İster ototrof ister heterotrof olsun, tüm canlılar besini dışarıdan hazır olarak alır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "9• Canlının inorganik yapısının büyük bir kısmı su, organik yapısının büyük bir kısmı proteindir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "10• Ortamda karbondioksit, laktik asit, pürivik asit, yağ asiti gibi maddelerin artması PH’i düşürür.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "11• Tampon bileşikler PH değerlerinin sabit kalmasını sağlar.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "12• Kalsiyum eksikliği çocukluk döneminde Raşitizm, yetişkinlik döneminde Osteomalazi ve Osteoporoz hastalığına neden olur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "13• Demir eksikliği anemi hastalığına sebep olur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "14• Demir, krolofil sentezinde katalizör olarak görev yapar. Fakat krolofilin yapısına katılmaz.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "15• İyot eksikliği Guatr hastalığına neden olur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "16• Sodyum ve potasyum sinirlerde uyartı iletiminde görevlidir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "17• Magnezyum, krolofilin yapısına katılır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "18• Fosfor, DNA, RNA, ATP yapısına katılır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "19• Klor, mide pH’nın düşürülmesinde görev alır. HCL pepsinojen enzimini aktifleştirir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "20• Canlılarda bulunan organik maddelerin genelinde karbon, hidrojen ve oksijen vardır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "21• Dehidrasyonda enzim kullanılır ve ATP harcanır. Sadece hücre içinde gerçekleşir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "22• Enzim denetiminde gerçekleşen hidroliz reaksiyonlarında ortam ısısı yeterli olduğu için ATP kullanılmaz. Bu sebeple hidroliz reaksiyonları hücre içi ve hücre dışında gerçekleşebilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "23• Pentozlar ( riboz ve deoksiriboz) hücrede enerji verici olarak kullanılmazlar.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "24• Vücuda alınan fruktoz ve galaktoz karaciğerde glikoza çevrilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "25• Maltoz ve sükroz bitki hücrelerinde, laktoz ise hayvan hücrelerinde üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "26• Maltoz bitki hücrelerinde üretilir. ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "27• Sükroz bitki hücrelerinde üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "28• Laktoz hayvan hücrelerinde üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "29• Disakkaritlerin yapımı dehidrasyon, yıkımı hidrolizdir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "30• Glikozun fazlasının nişasta ve glikojen şeklinde depolanması, hücrelerdeki osmotik basıncın ayarlanmasını sağlar. Bu durum homeostasi ( iç denge ) açısından önemlidir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "31• Hücre çeperi mantarlarda kitin, bakterilerde peptidoglikan, bitkilerde selüloz, yapılıdır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "32• Yağlar, karbonhidratlar ve proteinlerden daha fazla hidrojen atomu içerir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "33• Yağlar solunumla parçalandıklarında karbonhidratlar ve proteinlerden daha fazla enerji açığa çıkarır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "34• Nötral yağlar ( trigliseritler) enerji verici olarak kullanılır. Fosfolipitler hücre zarının yapısına katıldığı için enerji üretiminde kullanılmaz.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "35• Temel yağ asitleri insan vücudunda sentezlenemez. Besinlerle beraber alınması zorunludur. Omega3 ve Omega 6 temel yağ asitleridir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "36• Yağlar polimer değildir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "37• Bitkiler protein sentezi için gerekli olana amino asit çeşitlerini kendileri sentezleyebilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "38• Amino asitlerin yapısında peptit bağı yoktur. Bu bağ amino asitler arasında kurulur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "39• Protein çeşitliliğinde protein yapısına katılan amino asitlerin dizilişi, sayısı ve çeşidinin farklı olması etkilidir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "40• Organik madde olan glikoz, yağ asidi ve amino asitler, insanların karaciğer hücrelerinde birbirlerine dönüşebilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "41• Enzimler tepkimeyi başlatmaz. Aktivasyon enerjisini düşürür ve tepkimeyi hızlandırır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "41• Bir apoenzim, belirli bir kofaktörler çalışır. Fakat bir kofaktör birden fazla apoenzimle çalışabilir. Bu nedenle hücrelerde bulunan apoenzim çeşidi, koenzim ya da kofaktör çeşidinden fazladır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "42• Enzimler hiç bir değişikliğe uğramadan reaksiyondan ayrılır. Aynı tip tepkimede tekrar tekrar kullanılabilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "43• Enzimler genelde belirli bir reaksiyona özgüdür. Bu nedenle her hücrede tepkime çeşidi kadar enzim çeşidi bulunur",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "44• Ortamdaki substrat miktarı sınırlı ise enzim yoğunluğu artsa bile reaksiyon bir süre devam eder daha sonra durur. Bunun nedeni ortamda substratın kalmamasıdır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "45• Hormonlar kanla taşınır. Çok az miktarlarda bile etkilidir. Düzenleyicidir. Yetersiz veya fazla salgılanmaları durumunda bazı hastalıklar ortaya çıkar.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "46• B ve C vitaminleri depo edilemediğinden günlük olarak almak gerekir. Toplumda B ve C vitamini eksikliği daha çok görülür.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "47• A ve D vitamini vücuda alındığında aktif değildir. A vitamini karaciğerde ve ince bağırsakta, D vitamini ise deride aktifleşir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "48• B ve K vitaminleri bağırsağımızda mutualist yaşayan bakteriler tarafından üretilir. Bilinçsiz antibiyotik kullanımı bu bakterileri yok edeceği için bağışıklık sistemimiz zayıflar.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "49• Nükleotitler içerdiği azotlu organik baza göre adlandırılır. Nükleik asitler ise içerdiği pentoz şekere göre adlandırılır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "50• Tüm canlılarda DNA ve RNA olmak üzere iki çeşit nükleik asit vardır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "51• Bir nükleotidin DNA’ya mı yoksa RNA’ya mı ait olduğunu anlamak için bazına ( U-T) veya şekerine ( riboz- dekoksiriboz) bakılır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "52• DNA’nın karşılıklı iki zinciri hidrojen bağlarıyla bağlıdır. Aynı zincirde bulunan nükleotitler arasında fosfodiester bağı bulunur. ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "53• Replikasyon olayı DNA polimeraz enzimi tarafından gerçekleştirilir. Bölünemeyen hücreler replikasyon yapamaz.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "54• RNA eşlenmez. Tüm RNA çeşitleri DNA tarafından transkripsiyonla üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "55• Hücrede bulunma miktarlarına göre RNA çeşitleri, rRNA>tRNA>mRNA şeklinde sıralanır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "56• DNA’nın yapısında amino asit ya da protein yoktur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "57• Virüslerde DNA ve RNA birlikte bulunmaz. Virüs genomu ya DNA ya da RNA içerir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "58• Fosforilasyon endergonik, defosforilasyon ekzergonik reaksiyondur. ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "59• ATP üretimi, oksijenli solunum, oksijensiz solunum, fermantasyon, fotosentez ve kemosentez olaylarıyla gerçekleşebilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "60• Bakteriler ve arkeler prokaryot hücre yapısına sahiptir. Protista, bitki, mantar ve hayvanlar alemine dahil canlılar ökaryot hücre yapısına sahiptir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "61• Prokaryot ve ökaryot hücrelerde hücre zarı, sitoplazma, DNA, RNA, ribozom ortaktır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "62• Moleküllerin hücre zarı yapısına katılma miktarları çoktan aza doğru, protein-yağ-karbonhidrat şeklindedir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "63• Glikolipit ve glikoproteinler hücre zarına özgüllük ve seçici geçirgen özellik sağlar.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "64• Hücre zarı, esnek, ince , saydam ve seçici geçirgendir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "65• Hücre çeperi kalın, dayanıklı ve tam geçirgendir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "66• Pasif taşıma olaylarında ATP harcanmaz ve canlılık şart değildir. Diğer madde geçişlerinde ATP harcanır ve canlılık şarttır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "67• Pasif taşımada ATP harcanmaz ve enzim kullanılmaz. Canlı ve cansız tüm hücrelerde gerçekleşebilir. İki ortam arasında yoğunluk farkı kalmazsa, geçişler eşit şekilde devam eder.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "68• Basit difüzyonda kanal proteinleri kullanılmaz. Moleküller fosfolipidler arasından geçer.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "69• Osmotik basıncın fazla olduğu yerde emme kuvveti oluşur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "70• Plazmoliz, hücrenin turgor basıncını azaltır, osmotik basıncını artırır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "71• Alyuvar hücrelerimiz için kan sıvısı, doku hücrelerimiz için doku sıvısı izotoniktir. Böylece hücrelerimiz homeostatik dengede kalabilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "72• Endositoz olayında hücre içi ve hücre dışı madde derişimi farkı önemli değildir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "73• Endositoz ve ekzositozda büyük moleküllerin geçişi, ATP harcanması ve enzim kullanılması ortaktır. Endositozda içeri doğru ekzositozda dışarıya doğru madde geçişi vardır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "74• Her canlı kendine özgü organik moleküllerini ribozomda üretir",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "75• Lizozom enzimlerinin apoenzim kısmı, GER üzerindeki ribozomlarda üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "76• Golgi aygıtında, selüloz sentezi olmaz. Selüloz, bitki hücrelerinin zarında bulunan selüloz sentez kompleks proteinleri tarafından üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "77• Sinir hücrelerinin lizozomlarında, lipitleri sindiren enzimlerin eksikliği Tay- Sachs hastalığına sebep olur. ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "78• Plastitler, bakteri , arke , mantar ve hayvan hücrelerinde bulunmazlar. Fotoototrof bakterilerde fotosentez kloroloplastta gerçekleşmez.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "79• Kloroloplastta ATP, fotofosforilasyonla üretilir ve fotosentez olayında kullanılır",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "80• Fotosentezin ışıklı evresi granumda, ışıktan bağımsız evresi stromada geçer.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "81• Fotosentezin ışıklı evresi granumda geçer.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "82• Fotosentezin ışıktan bağımsız evresi stromada geçer.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "83• Işıktan bağımsız evrenin gerçekleşebilmesi için ışığa bağımlı evrede üretilen bazı maddelere ihtiyaç vardır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "84• Glikoz mitokondriye girmez. Glikoliz tepkimeleriyle pirüvik asite dönüştükten sonra mitokondriye girer.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "85• Mitokondride oksidatif ve substrat düzeyinde fosforilasyonla ATP üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "86• Mitokondri DNA’sında mutasyonlar sebebiyle LHON sendromu Leigh Sendromu ve Kearns- Sayre sendromu gibi kalıtsal hastalıklar görülebilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "87• Bitki hücrelerinde iğ ipliği sentrozom tarafından değil, mikrotübül organize edici merkez tarafından yapılır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "88• Hücre iskeleti elemanları inceden kalına doğru Mikroflament- Ara filament- Mikrotübül şeklinde sıralanır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "89• Prokaryot hücreli bakteri ve arkelerde hücre iskeleti yoktur. Bazı bakterilerde bulunan kamçı mikrotübül içermez.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "90• Çekirdek zarı porlarından RNA, ribozom ait birimleri gibi büyük moleküller çıkarabilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "91• Çekirdek sıvısının nükleik asit içeriği sitoplazmaya göre daha yoğundur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "92• Tüm RNA çeşitleri ve ribozom alt birimleri çekirdekçikte üretilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "93• Kromatin nükleoprotein yapılıdır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "94• İnsanların vücut hücrelerinde DNA aynı olmasına rağmen, farklı hücre çeşitlerinde aktif gen bölgeleri farklıdır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "95• Tüm hücrelerde sitoplazma ve onu çevreleyen bir hücre zarı bulunur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "96• Amip ve akyuvar gibi hücreler, hareket ederken şekillerini de değiştirir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "97• Erişkin kök hücrelerin farklılaşma yeteneği sınırlıdır. Embriyonik kök hücrelerin farklılaşma yeteneği ise sınırsızdır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "98• Homolog organların embriyonik kökenleri aynıdır. Analog organların embriyonik kökenleri farklıdır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "99• Aynı türe ait bireylerin protein yapıları ( DNA nükleotit dizilimleri ) benzer olmasına rağmen aynı değildir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "100• İki canlının kromozom sayılarının aynı olması, bu canlıların aynı türe ait ya da yakın akraba olduğunu göstermez.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "101• Bir hayvanın embriyolojik gelişimi sırasında önce şube, en son ise tür özellikleri ortaya çıkar. Başka bir ifadeyle özelliklerin ortaya çıkışı genelden özele doğru olur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "102• Cinsleri aynı olan iki türün aile ve takımları aynıdır. Aynı takımda yer alan türlerin cins ve aileleri aynı olmayabilir.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "103• Konjugasyon üreme değildir. Birey sayısı artmaz. Bakterilerde, çeşitlilik ve antibiyotik direnci sağlayan özel bir durumdur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "104• Parazit bakteriler nişasta, glikojen ve protein gibi polimer besinlerin bulunduğu ortamlarda yaşayamazlar. Glikoz, aminoasit ve gliserol gibi monomer besinlerin bulunduğu ortamlarda ise yaşayabilirler.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "105• Amip, öglena, paramesyum içlerine giren fazla suyu kontraktil kofullarıyla dışarı atarak boşaltım ve homeostasi sağlarlar. Kontraktif koful faaliyetinde ATP harcanır.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "106• Plazmodium, anofel cinsi sivrisinekte eşeyli, insanda eşeysiz üreme yaparak döngüsünü tamamlar. Bu sırada insanda sıtma hastalığına sebep olur.",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
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
