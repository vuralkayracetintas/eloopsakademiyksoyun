import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const ing11());
}

class ing11 extends StatefulWidget {
  const ing11({Key? key}) : super(key: key);

  @override
  _ing11State createState() => _ing11State();
}

class _ing11State extends State<ing11> {
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
                  "İngilizce Kelimeler",
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
                  "Daha fazlası için English YDT Uygulamamızı indirebilirsiniz. Katalog kısmından ulaşabilirsiniz.",
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
              SizedBox(height: 5),
              Center(
                child: Text(
                  "1• hunter = avcı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "2• ignore = görmezden kalmak, kale almamak (= take no notice)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "3• illusion = hayal,hülya, kuruntu",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "4• illustrate = örneklemek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "5• imagine = hayal etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "6• imitate = taklit etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "7• impact = çarpmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "8• implement = gerçekleştirmek (realize)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "9• implicate = bulaştırmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "10• imply = ima etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "11• impose = zorla kabul ettirmek, koymak( vergi), yük olmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "12• imprisonment = hapse atmak (= incarceration)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "13• improve = geliştirmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "14• incessant = aralıksız, sürekli",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "15• incline = eğmek, eğilimi olmak, fikrini vermek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "16• indicate = göstermek, belirtisi olmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "17• indifference to = kayıtsız, ilgisiz olmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "18• inevitable = kaçınılmaz (= inescapable)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "19• infer = anlamak, sonucunu çıkarmak ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "20• influence = (1) etki (= impact, effect) (2) etkilemek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "21• inhibit = göz dağı vermek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "22• injure = incitmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "23• innovative = yenilikçi, icatçı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "24• inspect = incelemek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "25• institute = kurmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "26• instruct = talimat vermek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "27• interaction (with) = etkileşim ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "28• kennel = köpek kulübesi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "29• latter = sonraki x former = önceki",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "30• levy = zorla toplama (haraç) ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "31• listless = yorgun, bitkin (= exhausted)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "32• literacy = okur yazarlık",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "33• litter = çöp (= trash, garbage, rubbish)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "34• lovely = sevecen, sevimli",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "35• maintain = korumak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "36• make a decision = karar vermek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "37• management = yönetim idare",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "38• manufacture = fabrikada üretmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "39• mature (maçu=) = olgun",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "40• memorial = anıt",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "41• memory = hafıza",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "42• migrate = göçmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "43• miraculously = mucize eseri",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "44• modify = değiştirmek (= change)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "45• multinational = çok uluslu",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "46• municipality = belediye",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "47• neglect = ihmal etmek (= ignore)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "48• obese = şişman, obez",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "49• objection = itiraz",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "50• obligation = zorunluluk, mecburiyet",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "51• observe = gözlemlemek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "52• obtain = elde etmek (= gain, attain) ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "53• occasional = ara sıra, nadiren (= infrequent)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "54• occur= meydana gelmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "55• occurrence = vukuat, olay",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "56• officially = resmen, resmi olarak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "57• opportunity = fırsat *** opportunist = fırsatçı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "58• opposition = karşıtlık, muhalefet,zıtlık",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "59• oppress = zulmetmek (= persecute)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "60• ordinary = sıradan, alışılagelmiş (= commonplace, mundane, average)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "61• orphan = yetim bırakmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "62• outcrop = yeryüzüne çıkmış katman",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "63• outcry = feryat figan, çığlık",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "64• outing = gezi, gezinti",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "65• overlap = üstüste binmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "66• overtake = sollamak, bastırmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "67• partially = kısmen",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "68• particularly = özellikle",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "69• passionately = ihtirasla, tutkuyla",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "70• pavement = kaldırım (= side-walk)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "71• peace and quiet = huzur ve sükunet",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "72• pedestrian = yaya",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "73• penalize = ceza vermek, cezalandırmak (= punish)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "74• perceive = algılamak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "75• permission = izin, müsaade",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "76• persevering = sebatkar, gayretli",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "77• persist = ısrar etmek, sürüp gitmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "78• persuade = ikna etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "79• pessimism = kötümserlik ***pessimist = kötümser ***optimist = iyimser",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "80• pet = ev hayvanı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "81• pioneer = öncü, yol açan, öncülük eden (= forerunner)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "82• placement = yerleştirme",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "83• plain = (1) düz, sade (2) ova, düzlük",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "84• plead = yalvarmak , rica etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "85• polio = çocuk felci",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "86• possession = eşya, mal mülk",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "87• predict = tahminde bulunmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "88• probability = olasılık",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "89• process = (bir malzemeyi) işlemek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "90• promptly = derhal, hemen",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "91• properly = adam akıllı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "92• property = mal, mülk",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "93• purpose = amaç, gaye",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "94• queue = sıra, kuyruk",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "95• rate = oran, hız",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "96• receive = almak, kabul etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "97• refund = parayı iade etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "98• regional = bölgesel",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "99• regretful = pişman, üzgün (= remorseful) ",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "100• relief = rahatlama, ferahlama ***relief work = afet kurtarma ekibi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "101• remain = kalıntı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "102• repetitive = monoton, sıkıcı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "103• replica = aslına çok benzeyen kopya",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "104• request = rica etmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "105• requirement = ihtiyaç, gereksinim",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "106• resentful = alıngan, darılmış",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "107• reside = ikamet etmek, yerleşmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "108• response = karşılık, cevap",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "109• savage = vahşi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "110• scalp = kafa derisini yüzmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "111• scarce = seyrek, az",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "112• scatter = saçmak, serpmek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "113• sceptical = şüpheci (= cynical)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "114• seasonal = mevsimine uygun",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "115• secure = güvenli, emniyetli (= safe)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "116• seed = tohum",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "117• sewage = lağım, kanalizasyon",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "118• shorten = kısaltmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "119• show off = hava atmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "120• silent = sessiz, sakin",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "121• slavery = kölelik",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "122• slight = hafif, az",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "123• solely = yalnızca, sadece",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "124• spectacular = görkemli, harikulade",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "125• spend = harcamak ( para vb)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "126• spine = omurga, belkemiği",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "127• spiritual = manevi, ruhani",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "128• stability = istikrar, denge",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "129• staff = personel",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "130• stage = sahne, derece",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "131• statue (steyçu) = heykel",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "132• steal = çalmak, hırsızlık yapmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "133• store = depo, depolamak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "134• stranger = yabancı, ecnebi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "135• sue = dava açmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "136• sufficiently = yeterli miktarda",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "137• suffrage = oy kullanma hakkı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "138• suggestion = öneri, tavsiye",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "139• suit = yakışmak (kıyafetin vb.)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "140• support = desteklemek",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "141• suspicion = şüphe",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "142• symptom = semptom, belirti (hastalık vb için)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "143• tapestry = duvar halısı",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "144• tasty = lezzetli",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "145• territory = bölge, arazi",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "146• throughout = boyunca",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "147• throw = atmak, fırlatmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "148• throw out = (çöp vb) dışarı atmak",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "149• thunderstorm = yıldırımlı fırtına",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "150• tomb = mezar, kabir, türbe (= grave)",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
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
