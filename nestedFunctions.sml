
(*
질문: 로컬함수 f1을 다른 함수 f2의 어느 부분에서 사용가능한가
-> let expression 식 이후 바인딩 ( 재귀 바인딩 포함)이나 식의 본문에서 사용가능하다
This is just a question about the scope of let expressions,
 and as always, the answer is that you can use the local function
  only in subsequent bindings of the let-expression and the body 
  ("in" part) of the let expression.
*)

(* 비교 1*)

fun count (from : int, to : int) =
    if from = to
    then to :: []
    else from :: count(from+1, to);

fun countup_from1(x : int) =
    count(1,x);

countup_from1(7);



(* 미교 2 중첩 함수로 리팩토링*)

fun countup_from1(x: int) =
    let fun count(from:int) =
        if from = x
        then x :: []
        else from :: count(from+1)

    in count(1)
    end;

countup_from1(7);