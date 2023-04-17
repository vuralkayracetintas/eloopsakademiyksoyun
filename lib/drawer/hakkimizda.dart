import 'package:flutter/material.dart';

class Hakkimizda extends StatefulWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  _HakkimizdaState createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Hakkımızda :",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Text(" \t  Merhaba değerli arkadaşlar,"
                  "\nE-LooPsAkademi, Türkiye'de 4 farklı alanda hizmet etmek için başlatılan bir girişimdir."),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Text(
                  " \t Kurucumuz dahil olmak üzere ekip içerisinde bulunan bütün operasyon arkadaşlarımız üniversite öğrencisidir"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Text(
                  " \t İlk önceliğimiz olan okul eğitiminde farkındalık oluşturmak ve siz değerli geleceğimize aradığı hizmetin en iyisini sunmaktır.Teknolojinin en verimli imkanlarından faydalanarak sizler ile çalışlar yürütmekteyiz."),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Text(
                  " \t Bizleri sosyal medya hesaplarından takip ederek sizler içn yaptığımız ve yapacağımız bir çok alanda hizmeti görebilirsiniz"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Text("\t-Şu anda beta olarak sunumda olmaktayız."),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Text(
                  "\t 4 farklı alanda tasarladığımız ve alt yapısını oluşturmakta olduğumuz akademimizin diğer 3 farklı alanlarını da çok sizlerle duyurmaktan büyük bir onur ve gurur duymaktayız."),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Text("İyi ki bizimlesiniz."
                  "\n\nSağlıkla kalın."
                  "\nBaşarılar."),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                  "Muhtaç olduğun kudret,damarlarındaki asil kanda,mevcuttur !"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Mustafa Kemal ATATÜRK"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "(E-LooPsAkadedemi tarafıdan oluşturulan bütün içerikler, konular, sorular ve yazıların tamamını veya bir kısmını elektronik, mekanik, fotokopi ya da herhangi bir kayıt sistemi ile çoğaltılması, yayınlaması ve depolanması YASAKTIR)",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
