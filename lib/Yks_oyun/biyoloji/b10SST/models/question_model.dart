class Bt10TFQuestionModel{

  String question;
  String answer;

  Bt10TFQuestionModel({
required this.question,required this.answer});

  void setQuestion(String getQuestion){
    question = getQuestion;
  }

  void setAnswer(String getAnswer){
    answer = getAnswer;
  }


  String getQuestion(){
    return question;
  }

  String getAnswer(){
    return answer;
  }


}