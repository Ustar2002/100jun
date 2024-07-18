//1934번 최소공배수
/*
문제
두 자연수 A와 B에 대해서, A의 배수이면서 B의 배수인 자연수를 A와 B의 공배수라고 한다. 이런 공배수 중에서 가장 작은 수를 최소공배수라고 한다. 예를 들어, 6과 15의 공배수는 30, 60, 90등이 있으며, 최소 공배수는 30이다.

두 자연수 A와 B가 주어졌을 때, A와 B의 최소공배수를 구하는 프로그램을 작성하시오.

입력
첫째 줄에 테스트 케이스의 개수 T(1 ≤ T ≤ 1,000)가 주어진다. 둘째 줄부터 T개의 줄에 걸쳐서 A와 B가 주어진다. (1 ≤ A, B ≤ 45,000)

출력
첫째 줄부터 T개의 줄에 A와 B의 최소공배수를 입력받은 순서대로 한 줄에 하나씩 출력한다.
*/
import 'dart:io';
import 'dart:math';

void main() {
  int T = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < T; i++) {
    String? list = stdin.readLineSync();
    if (list != null) {
      List<String> listAB = list.split(' ');
      int A = int.parse(listAB[0]);
      int B = int.parse(listAB[1]);
      int temp = 1;
      int minAB, maxAB;
      A == min(A, B) ? minAB = A : minAB = B;
      A == max(A, B) ? maxAB = A : maxAB = B;

      for (int i = 1; i <= minAB; i++) {
        if (maxAB % i == 0 && minAB % i == 0) {
          temp *= i;
          minAB ~/= i;
        }
      }

      print(A * B / temp);
    }
  }
}
