//10869 사칙연산
/*
문제
두 자연수 A와 B가 주어진다. 이때, A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력하는 프로그램을 작성하시오. 

입력
두 자연수 A와 B가 주어진다. (1 ≤ A, B ≤ 10,000)

출력
첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.
*/

import 'dart:io';

void main() {
  String? input = stdin.readLineSync();

  if (input != null) {
    List<String> inputs = input.split(' ');

    if (inputs.length == 2) {
      int A = int.parse(inputs[0]);
      int B = int.parse(inputs[1]);

      print(A + B);
      print(A - B);
      print(A * B);
      print(A ~/ B); //dart의 몫 연산자
      print(A % B);
    } else {
      print('입력 형식이 잘못되었습니다.');
    }
  } else {
    print('입력이 없습니다.');
  }
}
