import '../models/question_model.dart';

List<Bt5TFQuestionModel> getQuestions() {
  List<Bt5TFQuestionModel> questions = <Bt5TFQuestionModel>[];
  Bt5TFQuestionModel questionModel =
      Bt5TFQuestionModel(answer: '', question: '');

  //1
  questionModel.setQuestion(
      "Amip ve akyuvar gibi hücreler, hareket ederken şekillerini de değiştirir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //2
  questionModel.setQuestion(
      "İnsanların vücut hücrelerinde DNA aynı olmasına rağmen, farklı hücre çeşitlerinde aktif gen bölgeleri farklıdır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //3
  questionModel.setQuestion("Glikoz mitokondriye girmektedir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //4
  questionModel.setQuestion(
      "Plazmoliz, hücrenin turgor basıncını artırır, osmotik basıncını azaltır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //5
  questionModel.setQuestion(
      "Plazmoliz, hücrenin turgor basıncını artırır, osmotik basıncını azaltır. ");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //6
  questionModel.setQuestion(
      "Pasif taşıma olaylarında ATP harcanır ve canlılık şarttır. Diğer madde geçişlerinde ATP harcanmaz ve canlılık şart değildir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //7
  questionModel.setQuestion(
      "Pasif taşımada ATP harcanır ve enzim kullanılmaz. Canlı ve cansız tüm hücrelerde gerçekleşemez. İki ortam arasında yoğunluk farkı kalmazsa, geçişler durur.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //8
  questionModel.setQuestion("Hücre çeperi ince ve tam geçirgendir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //9
  questionModel.setQuestion(
      "Moleküllerin hücre zarı yapısına katılma miktarları çoktan aza doğru, protein-yağ-karbonhidrat şeklindedir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //10
  questionModel.setQuestion(
      "Fosforilasyon endergonik, defosforilasyon ekzergonik reaksiyondur.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //11
  questionModel.setQuestion(
      "Virüslerde DNA ve RNA birlikte bulunmaktadır. Virüs genomu DNA ve RNA içerir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //12
  questionModel.setQuestion("DNA’nın yapısında amino asit ve protein vardır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //13
  questionModel.setQuestion(
      "Hücrede bulunma miktarlarına göre RNA çeşitleri, rRNA>tRNA>mRNA şeklinde sıralanır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //14
  questionModel.setQuestion(
      "RNA eşlenir. Tüm RNA çeşitleri DNA tarafından transkripsiyonla kopyalanır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //15
  questionModel.setQuestion(
      "Hücrede bulunma miktarlarına göre RNA çeşitleri, mRNA>tRNA>rRNA şeklinde sıralanır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //16
  questionModel.setQuestion(
      "Bir nükleotidin DNA’ya mı yoksa RNA’ya mı ait olduğunu anlamak için bazına ( U-T) veya şekerine ( riboz- dekoksiriboz) bakılır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //17
  questionModel.setQuestion(
      "A ve D vitamini vücuda alındığında aktif değildir. A vitamini deride, D vitamini ise karaciğerde ve ince bağırsakta aktifleşir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //18
  questionModel.setQuestion(
      "B vitamini depo edilebildiğinden günlük olarak almak gerekmez.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //19
  questionModel.setQuestion(
      "Hormonlar kanla taşınır. Çok az miktarlarda bile etkilidir. Düzenleyicidir. Yetersiz veya fazla salgılanmaları durumunda bazı hastalıklar ortaya çıkar.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  //20
  questionModel.setQuestion(
      "İki canlının kromozom sayılarının aynı olması, bu canlıların aynı türe ait ya da yakın akraba olduğunu göstermez.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = Bt5TFQuestionModel(answer: '', question: '');

  return questions;
}
