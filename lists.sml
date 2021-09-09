(*  Tuples : fixed number of pieces that may have diff types
    Lists: any number of pieces that all have same ytpe
*)

val x = [1,2,3] ;
null x ; (* null 은 함수다, 리스트가 비어있으면 true*)
hd x;(*head element*)
tl x;(*tail element*)

(* 아래 리스트의 엘리먼트 6에 접근하는 방법*)
val list = [6,4,6,3];
val el = hd (tl (tl list)); (*[6,3] 에서 hd 헤드 엘리먼트가 6으로 나옴*)
3 :: list; (*리스트 앞에 엘리먼트 추가*)
1 :: 2 :: list;
[2] :: list ; (* <-에러 2차원 리스트에서만 추가 가능*)

val pair = [(2,3), (3,4)];
(5,2) :: pair;