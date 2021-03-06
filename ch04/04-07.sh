#!/bin/bash
# shft.sh: 'shift'를 사용하여 모든 위치 매개변수를 단계적으로 접근합니다.

# 이 스크립트의 이름이 shift.sh 라면 다음과 같이 매개 변수와 함께 호출합니다.
# 예:
#             sh shft.sh a b c def 83 barndoor

until [ -z "$1" ]  # 모든 매개변수를 사용할 때까지...
do
  echo -n "$1 "
  shift
done

echo               # 추가 줄바꿈(linefeed).

# 그렇다면, 범위를 초과한 매개변수는 어떻게 될까요?
echo "$2"
#  아무것도 출력하지 않습니다!
#  $2는 $1으로 이동하고 ($3은 $2로 이동하고...)
#+ 결국 $2는 빈값이 됩니다.
#  따라서, shift는 매개 변수 *복사*가 아니라 *이동*입니다.

exit