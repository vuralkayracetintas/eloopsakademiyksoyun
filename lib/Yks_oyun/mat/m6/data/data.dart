import 'package:yksoyun_23_06_2022/Yks_oyun/mat/m6/models/question_model.dart';

List<m6QuestionModel> getQuestionsm6() {
  List<m6QuestionModel> questions = <m6QuestionModel>[];
  m6QuestionModel questionModel = m6QuestionModel(answer: '', question: '');
  ;

  //1
  questionModel.setQuestion("y=f(x)=5x³ ise f’(x) 15x³'dür.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;

  //2
  questionModel.setQuestion(
      "y=(2x−1).(x³−8)\neğrisinin x=2 apsisli noktasındaki türevi 32’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = m6QuestionModel(answer: '', question: '');
  ;

  //3
  questionModel.setQuestion(
      "f(x)=x²−4x+4\nfonksiyonuna üzerindeki A(0,k) noktasından çizilen teğetin eksenlerle oluşturduğu üçgenin alanı 8br² ‘dir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //4
  questionModel.setQuestion(
      " 3 < x ≤ 7,\nolduğuna göre\n3x + 4\nifadesinin alabileceği 8 kaç farklı tam sayı değeri vardır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //5
  questionModel.setQuestion(
      "a ve b birer tam sayı olmak üzere,\n−4 < a < 7,\n4 < b < 9,\nolduğuna göre 2a+2b işleminin en büyük tam sayı değeri 30’dur.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //6
  questionModel.setQuestion(
      "a ve b üç basamaklı doğal sayılar olmak üzere,\na−b = 100\neşitliğini sağlayan 800 tane a sayısı vardır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //7
  questionModel.setQuestion("OBEB’leri 5 olan üç sayının toplamı 20’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //8
  questionModel.setQuestion(
      "Bir sepetteki elmalar ikişerli, üçerli ve dörderli sayıldığında her seferinde 3 elma artıyor. Sepetteki elma sayısı 140‘tan fazla olduğuna göre sepette en az 142 elma vardır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //9
  questionModel.setQuestion(
      "a, b, c ve d ardışık dört pozitif çift tam sayıdır.\nOKEK(a, b, c, d) = 24 ise a+b+c+d toplamı 20’dir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //10
  questionModel.setQuestion("a= 3,\nb= 15,\n(a+b)/c = 2\nise c = 9’dir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;

  //11
  questionModel.setQuestion("a= 44,\nb= 12,\n(a-b)/c = 6\nise c = 5’dir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;
  //12
  questionModel.setQuestion("a= 62,\nb= 26,\n(a-b)/c = 4\nise c = 10’dir");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m6QuestionModel(answer: '', question: '');
  ;

  return questions;
}
