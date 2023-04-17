import '../models/question_model.dart';

List<Bt1TFQuestionModel> getQuestions() {
  List<Bt1TFQuestionModel> questions = <Bt1TFQuestionModel>[];
  Bt1TFQuestionModel questionModel =
      Bt1TFQuestionModel(answer: '', question: '');

  //1
  questionModel.setQuestion(
      "Prokaryotların tamamı tek hücrelidir, fakat tek hücrelilerin tamamı prokaryot değildir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //2
  questionModel
      .setQuestion("Fotosentez yapım olayıdır fakat dehidrasyon değildir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //3
  questionModel.setQuestion(
      "Oksijenli solunum ve fermantasyon olayları yapım olayıdır fakat hidroliz değildir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //4
  questionModel.setQuestion(
      "Pasif taşıma ve hidroliz dışındaki biyokimyasal olaylarda ATP kullanılır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //5
  questionModel.setQuestion(
      "İnorganik maddelerin, organik maddeye dönüşümü heterotrof canlılarda gerçekleşir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //6
  questionModel
      .setQuestion("İnorganik maddeleri bazı canlılar kendileri üretir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //7
  questionModel.setQuestion(
      "Canlının inorganik yapısının büyük bir kısmı proteindir, organik yapısının büyük bir kısmı sudur.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //8
  questionModel.setQuestion(
      "Ortamda karbondioksit, laktik asit, pürivik asit, yağ asiti gibi maddelerin artması PH’i düşürür.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //9
  questionModel
      .setQuestion("C ve D vitamin eksikliği anemi hastalığına sebep olur.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //10
  questionModel.setQuestion(
      "Demir, krolofil sentezinde katalizör olarak görev yapar. Fakat krolofilin yapısına katılmaz.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //11
  questionModel.setQuestion(
      "Klor, mide pH’nın yükselmesinde görev alır. HCL pepsinojen enzimini durdurur.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //12
  questionModel.setQuestion(
      "Canlılarda bulunan organik maddelerin tamamında karbon, hidrojen ve oksijenden oluşturmaktadır. ");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //13
  questionModel.setQuestion(
      "Dehidrasyonda enzim kullanılır ve ATP harcanır. Sadece hücre içinde gerçekleşir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //14
  questionModel.setQuestion(
      "Enzim denetiminde gerçekleşen hidroliz reaksiyonlarında ortam ısısı yeterli olduğu için ATP kullanılır. Bu sebeple hidroliz reaksiyonları sadece hücre içinde gerçekleşebilir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //15
  questionModel.setQuestion(
      "Pentozlar ( riboz ve deoksiriboz) hücrede enerji verici olarak kullanılmazlar.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //16
  questionModel.setQuestion(
      "Vücuda alınan fruktoz ve galaktoz karaciğerde glikoza çevrilir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //17
  questionModel.setQuestion(
      "Maltoz ve sükroz bitki hücrelerinde, laktoz ise hayvan hücrelerinde üretilir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //18
  questionModel.setQuestion("Sükroz hayvan hücrelerinde üretilir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //19
  questionModel
      .setQuestion("Disakkaritlerin yıkımı dehidrasyon, yapımı hidrolizdir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  //20
  questionModel.setQuestion(
      "Glikozun fazlasının nişasta ve glikojen şeklinde depolanması, hücrelerdeki osmotik basıncın ayarlanmasını sağlar. Bu durum homeostasi ( iç denge ) açısından önemlidir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt1TFQuestionModel(answer: '', question: '');

  return questions;
}
