fun old_max (xs : int list) =
    if null xs (*리스트가 비었다면*)
    then 0 
    else if null (tl xs)   (*0인덱스 요소만 남았다면*)
    then hd xs  (*첫번째 요소값*)
    else
        let val tl_ans = old_max(tl xs)
        in 
            if hd xs > tl_ans
            then hd xs
            else tl_ans
        end;

old_max ([1,2,3]);
old_max ([2,30,6,2,9]);

(* 위 MAX 함수에서 0을 MAX로 반환하는 것 보다 나은방법 
-> int option을 반환한다 *)

(* fun : int list -> int option *)
fun max1 (xs : int list) =
    if null xs
    then NONE
    else
        let val tl_ans = max1(tl xs)
        in 
            if isSOME tl_ans andalso valof tl_ans > hd xs
            then tl_ans
            else SOME (hd xs)
        end;

max1 [1,2,6,3,4];

(* compute two conjunctions -> andalso*)