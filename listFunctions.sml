(*모든 엘리먼트를 합하는 함수*)
fun sum_list (xs : int list) = 
    if null xs (*리스트가 비어있는경우*)
    then 0
    else hd xs + sum_list(tl xs);

sum_list [3,4,5]; (*12*)

(*숫자를 받아서 1씩 감소하는 엘리먼트 리스트 생성*)
fun countdown (x : int) = (*[7,6,5,4,3,2,1]*)
    if x=0
    then []
    else x :: countdown(x-1);

countdown 20;

sum_list (countdown 10);

(*두 리스트를 합하는 함수*)
fun append (xs : int list, ys : int list) =
    if null xs
    then ys
    else (hd xs) :: append ((tl xs), ys);

append ([1,2] ,[3,4]); 


(* (int list)**int list) -> int list*)
(*funtions over pairs of lists*)
fun sum_pair_list (xs : (int *int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs);
sum_pair_list [(3,4),(5,6)];

(*페어 엘리먼트가 있는 리스트에서 각각의 첫번째 엘리먼트 뽑는 함수*)
fun firsts (xs : (int * int) list) = (*[3,5]*)
    if null xs
    then []
    else (#1 (hd xs)) :: firsts(tl xs);

firsts [(3,4),(5,6)]

fun seconds (xs : (int * int) list) = (*[3,5*)
    if null xs
    then []
    else (#2 (hd xs)) :: seconds(tl xs);

fun sum_pair_list2 (xs : (int *int) list) =
    (sum_list (firsts xs)) + (sum_list(seconds xs));

sum_pair_list2 [(3,4),(5,6),(7,8)]; (*33*))

(* 리스트에 사용하는 함수는 주로 재귀다
리스트가 비어있는경우와 아닌경우- tail을 사용*)