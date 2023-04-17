import 'package:yksoyun_23_06_2022/Yks_oyun/mat/m5/models/question_model.dart';

List<m5QuestionModel> getQuestionsm5() {
  List<m5QuestionModel> questions = <m5QuestionModel>[];
  m5QuestionModel questionModel = m5QuestionModel(answer: '', question: '');
  ;

  //1
  questionModel.setQuestion("Toplamda 9 adet rakam vardır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;

  //2
  questionModel.setQuestion(
      "f(x)=x² −4\nfonksiyonunun x₀=2\napsisli noktasındaki türevi\n2x+1’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = m5QuestionModel(answer: '', question: '');
  ;

  //3
  questionModel.setQuestion(
      "y=(2x−1).(x³−8)\neğrisinin x=2 apsisli\nnoktasındaki türevi\n36’dır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //4
  questionModel
      .setQuestion("f(x)= x⁴+3x³−6x²+2x−8\nolduğuna göre f’(−1),\n 17’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //5
  questionModel
      .setQuestion("3x+4 = 5x−2,\ndenklemini sağlayan x\ndeğeri 3'tür.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //6
  questionModel
      .setQuestion("2(x−1) + 4x = 6x+8\ndenkleminin çözüm kümesi\n6x+6’dır.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //7
  questionModel.setQuestion(
      "x∈(2,7],\nifadesinin eşitsizlik ile gösterimi\n2 < x ≤ 7’ dir.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //8
  questionModel.setQuestion(
      "3 < x ≤ 7,\nolduğuna göre 3x + 4\nifadesinin alabileceği 9 farklı tam sayı değeri vardır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //9
  questionModel.setQuestion(
      "x ve y birbirinden farklı pozitif tam sayılardır.\nx+y = 15,\nolduğuna göre x.y ifadesinin alabileceği en büyük ve en küçük değerleri toplamı 68’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //10
  questionModel.setQuestion("EBOB(10,12) + EBOB(3,9) toplamının değeri 2’dir.");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;

  //11
  questionModel.setQuestion("a= 48,\nb= 6,\n(a/b)-c = 8\nise c = 0’dır.");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;
  //12
  questionModel.setQuestion("a= 77,\nb= 31,\n(a-b)/c = 23\nise c = 4’dir");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = m5QuestionModel(answer: '', question: '');
  ;

  return questions;
}
