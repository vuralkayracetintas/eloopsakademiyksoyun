import 'package:yksoyun_23_06_2022/Yks_oyun/biyoloji/b2tf/models/question_model.dart';

List<Bt2TFQuestionModel> getQuestions() {
  List<Bt2TFQuestionModel> questions = <Bt2TFQuestionModel>[];
  Bt2TFQuestionModel questionModel =
      Bt2TFQuestionModel(answer: '', question: '');

  //1
  questionModel.setQuestion(
      "Hücre çeperi mantarlarda peptidoglikan, bakterilerde selüloz, bitkilerde kitin, yapılıdır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //2
  questionModel.setQuestion(
      "Hücre çeperi mantarlarda peptidoglikan, bakterilerde kitin, bitkilerde selüloz, yapılıdır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //3
  questionModel.setQuestion(
      "Yağlar, karbonhidratlar ve proteinlerden daha fazla hidrojen atomu içerir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //4
  questionModel.setQuestion(
      "Proteinler, yağlar ve karbonhidratlardan daha fazla hidrojen atomu içerir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //5
  questionModel.setQuestion(
      "Yağlar solunumla parçalandıklarında karbonhidratlar ve proteinlerden daha fazla enerji açığa çıkarır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //6
  questionModel.setQuestion(
      "Proteinler solunumla parçalandıklarında yağlar ve karbonhidratlardan daha fazla enerji açığa çıkarır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //7
  questionModel.setQuestion(
      "Nötral yağlar ( trigliseritler) enerji verici olarak kullanılır. Fosfolipitler hücre zarının yapısına katıldığı için enerji üretiminde kullanılmaz.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //8
  questionModel.setQuestion(
      "Temel yağ asitleri insan vücudunda sentezlenemez. Besinlerle beraber alınması zorunludur. Omega3 ve Omega 6 temel yağ asitleridir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //9
  questionModel.setQuestion("Yağlar polimerdir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //10
  questionModel.setQuestion(
      "Bitkiler protein sentezi için gerekli olana amino asit çeşitlerini dışarıdan alır ve sentezleyemez.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //11
  questionModel.setQuestion(
      "Amino asitlerin yapısında peptit bağı yoktur. Bu bağ amino asitler arasında kurulur.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //12
  questionModel.setQuestion(
      "Protein çeşitliliğinde protein yapısına katılan amino asitlerin dizilişi, sayısı ve çeşidinin farklı olması etkilidir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //13
  questionModel.setQuestion(
      "Organik madde olan glikoz, yağ asidi ve amino asitler, insanların karaciğer hücrelerinde birbirlerine dönüşemez.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //14
  questionModel.setQuestion(
      "Enzimler tepkimeyi başlatmaz. Aktivasyon enerjisini artırır ve tepkimeyi yavaşlatır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //15
  questionModel.setQuestion(
      "Bir apoenzim, belirli bir kofaktörler çalışır. Fakat bir kofaktör birden fazla apoenzimle çalışabilir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //16
  questionModel.setQuestion(
      "Enzimler değişikliğe uğrayarak reaksiyondan ayrılır. Aynı tip tepkimede bir daha kullanılmaz.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //17
  questionModel.setQuestion(
      "Enzimler genelde belirli bir reaksiyona özgüdür. Bunedenle her hücrede tepkime çeşidi kadar enzim çeşidi bulunur.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //18
  questionModel.setQuestion(
      "Ortamdaki substrat miktarı sınırlı ise enzim yoğunluğu artsa bile reaksiyon bir süre devam eder daha sonra durur. Bunun nedeni ortamda substratın kalmamasıdır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //19
  questionModel.setQuestion(
      "C vitamini depo edilebildiğinden günlük olarak almak gerekmez.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');

  //20
  questionModel.setQuestion(
      "A ve D vitamini vücuda giriş yaptığı anda aktif olurlar (yemek borusunda).");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt2TFQuestionModel(answer: '', question: '');
  return questions;
}
