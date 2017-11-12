library questionsapi;

// import 'dart:io';

import 'package:rpc/rpc.dart';
// import 'dart:async';

class QuestionsResponse {
  String result;
  QuestionsResponse();
}

@ApiClass(version: '0.1')
class QuestionsApi {
  QuestionsApi();

  @ApiMethod(path: 'test')
  QuestionsResponse test() {
    return new QuestionsResponse()..result = 'Test';
  }
}
