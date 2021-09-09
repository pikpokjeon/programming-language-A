
fun test () =
    let 
        val x =1
    in
        (let val x =2 in x +1 end) + (let val y= x+2 in y+1 end) 
        (*스코프가 형성됨 y변수에서 연산할 때 x는 위 x를 shadowing함 연산값은 in에서*)
    end;

test(); (*7*)