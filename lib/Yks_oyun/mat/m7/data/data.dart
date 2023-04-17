import 'package:yksoyun_23_06_2022/Yks_oyun/mat/m7/models/question_model.dart';

List<m7QuestionModel> getQuestionsm7() {
  List<m7QuestionModel> questions = <m7QuestionModel>[];
  m7QuestionModel questionModel = m7QuestionModel(answer: '', question: '');
  ;

  //1
  questionModel
      .setQuestion("3(x−1) = 2(x+2)−4\ndenklemini sağlayan x değeri 3’dür.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;

  //2
  questionModel.setQuestion(
      " f(x)=x²−4x+4\nfonksiyonuna üzerindeki A(0,k) noktasından çizilen teğetin eksenlerle oluşturduğu üçgenin alanı 6br²‘dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = m7QuestionModel(answer: '', question: '');
  ;

  //3
  questionModel
      .setQuestion("f(x)= x⁴+3x³−6x²+2x−8\nolduğuna göre f’(−1) 19’dur.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //4
  questionModel.setQuestion(
      "3ax − 12 = 3x + 12b,\ndenklemi x in tüm gerçek\nsayı değerleri için sağlandığına göre a+b, toplamı 1’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //5
  questionModel.setQuestion(
      "5x+1 <16\neşitsizliğini sağlayan 3 tane doğal sayı değeri vardır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //6
  questionModel.setQuestion(
      "a ve b birer tam sayı olmak üzere,\n−4 < a < 7,\n4 < b < 9,\nolduğuna göre 2a+2b\nişleminin en büyük tam sayı değeri 20’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //7
  questionModel.setQuestion("(3+3)÷2+(2+8)\nişleminin sonucu 11’dir. ");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //8
  questionModel.setQuestion(
      "Kenar uzunlukları 12m ve 36m olan dikdörtgen şeklindeki bir tarlanın çevresine ve içine eşit aralıklarla fidan dikilecektir. Her köşesine bir fidan gelmesi koşuluyla en az 6 fidan gereklidir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //9
  questionModel.setQuestion(
      "Rakamları toplamı 13 olan en büyük üç basamaklı ve rakamları farklı olan en büyük ve en küçük doğal sayının farkı 801’dir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //10
  questionModel.setQuestion(
      "7ab,\n3 basamaklı bir sayıdır. k=7ab olduğuna göre ab3 sayısının k cinsinden eşiti 10k –6997’dir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;

  //11
  questionModel.setQuestion(
      "Sağ tarafına 19 yazıldığında değeri 2098 artan iki basamaklı sayının rakamları çarpımı 2 olur.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;
  //12
  questionModel.setQuestion(
      "Ahmet 22 yaşındadır. Veli, Ahmet’ten 5 yaş büyüktür. Serdar ise Veli’den 2 yaş küçüktür. Buna göre Serdar ile Ahmet arasında 1 yaş farkı bulunmaktadır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m7QuestionModel(answer: '', question: '');
  ;

  return questions;
}
