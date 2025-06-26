
Pre-requisites:
- Install ocaml via brew
- Install utop via ocaml (utop is like interpreted shell for ocaml)
- watch Michael Ryan Clarkson's videos in youtube
- solve hackerrank problems in Ocaml
- read https://dev.realworldocaml.org/guided-tour.html

In function programming we don't mutate variables, everything is immutable.

Variable declaration:
let var = 3;;
let var: int = 3;; (* Both are same *)

Operators:
In Ocaml + is defined only for int's for float's use +. same thing for *, / and so on
:: => list concatenation
@@ => function application

Functions:
- Every function is like a variable and can be passed
- Use rec keyword before a recursive function, it's looks like pain in the ass but it's recommended

Util functions:
- int_of_string (*converts string to int)
- Float.of_int (*converts float to int*)

Type Inference:
- Types are inferred automatically like auto keyword in Cpp

Tuples:

let a_tuple = (3, "three")
val a_tuple : int * string = (3, "three")
let another_tuple = (3, "four", 5.) ;;
val another_tuple : int*string*float = (3, "four", 5.)

Extract components with this
let (x,y) = a_tuple
val x: int = 3
val y: string = "three"

IO:

(* Then define read_lines *)
let rec read_lines () =
  try
    let line = read_line () in
    int_of_string line :: read_lines()
  with
    End_of_file -> []

Main:

let () =
    let n::arr = read_lines() in
    let ans = f n arr in
    List.iter (fun x -> print_int x; print_newline ()) ans;;
