library questionsapi;

// import 'dart:io';

import 'package:rpc/rpc.dart';
// import 'dart:async';

class Question {
  int id;
  String title;
  String summary;
}

class QuestionsResponse {
  String result;
  QuestionsResponse();
}

@ApiClass(
  name: 'qa',
  version: 'v1'
)
class QuestionsApi {
  QuestionsApi();

  @ApiResource()
  QuestionResource resource = new QuestionResource();

  @ApiMethod(path: 'status')
  QuestionsResponse test() {
    return new QuestionsResponse()..result = 'Up and running...';
  }
}

class QuestionResource {
  List _questions = [];

  @ApiMethod(path: 'questions')
  List<Question> getQuestions() => _questions;

  @ApiMethod(path: 'questions', method: 'POST')
  Question postQuestion(Question question) {
    _questions.add(question);
    return question;
  }
}
