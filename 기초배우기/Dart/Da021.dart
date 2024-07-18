//9498번 시험 성적
/*
문제
시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.

입력
첫째 줄에 시험 점수가 주어진다. 시험 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.

출력
시험 성적을 출력한다.
*/
import 'dart:io';

void main() {
  int score = int.parse(stdin.readLineSync()!);
  if (score >= 90)
    print("A");
  else if (score >= 80 && score < 90)
    print("B");
  else if (score >= 70 && score < 80)
    print("C");
  else if (score >= 60 && score < 70)
    print("D");
  else
    print("F");
}
