val x = 34;
val y = 17 + 1
val z = if y > 0 then false else x < 4
val a = ~3 (*negative*)
val v = x div a (*division*)



(*
Variables
- syntax: sequence of letters, digits, _, not starting with digit

    if e1 then e2 else e3
    where if, then, and else are keywords and
    e1, e2, and e3 are subexpressions

- Type-checking: Look up type in current static environment

    fist e1 must have type bool
    e2 and e3 can have any type (call it t), but they must have same type t
    the type of the entire expression is also t

- Evaluation: Look up value in current dynamic environment 

    rules
    first evaluate e1 to a value call it v1
    if its true evaluate e2 and that result is the whole exporesssion's result
    else, evalueate e3 and that result is the whole exppressions result
    *)