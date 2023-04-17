class TrvEde13QuestionModel{

  String question;
  String answer;

  TrvEde13QuestionModel({
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