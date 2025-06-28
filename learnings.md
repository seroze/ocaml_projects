
Pre-requisites:
- Install ocaml via brew
- Install utop via ocaml (utop is like interpreted shell for ocaml)
- watch Michael Ryan Clarkson's videos in youtube
- solve hackerrank problems in Ocaml
- https://www.cs.cornell.edu/courses/cs3110/2016fa/
- read https://dev.realworldocaml.org/guided-tour.html
- https://www.youtube.com/watch?v=36_epDp_MZg&list=PLF-pVzrCrXdj7rBvOOwulglwwDjVy96uI&index=7
- https://www.youtube.com/watch?v=mtrzgNqL_A8&list=PLt0HgEXFOHdkE-NTs87s7QjwYwqeihb-D&index=2 (lectures of kc from iit madras)

In function programming we don't mutate variables, everything is immutable.

Variable declaration:
```ocaml
let var = 3;;
let var: int = 3;; (* Both are same *)
```

Operators:
In Ocaml + is defined only for int's for float's use +. same thing for *, / and so on
:: => list concatenation
@@ => function application
<> => not equals
=  => equals comparision (Note: In C, Python, Java we use = for assignment)
:= => assignment operation

If/else:

for and use &&
if cond then
  do_something
else if cond then
  do something
else
  do something etc..

Error handling:

Use Ok x and Error msg type syntax
```ocaml

let hamming_distance a b =
  if List.length a = 0 && List.length b = 0 then
    Ok 0
  else if List.length a = 0 then
    Error "left strand must not be empty"
  else if List.length b = 0 then
    Error "right strand must not be empty"
  else if List.length a <> List.length b then
    Error "left and right strands must be of equal length"
  else
    let rec compare acc = function
      | [], [] -> Ok acc
      | x::xs, y::ys ->
          if x = y then compare acc (xs, ys)
          else compare (acc + 1) (xs, ys)
      | _ -> Error "Unexpected error" (* should never happen *)
    in
    compare 0 (a, b)
  (* failwith "'hamming_distance' is missing" *)

```

Functions:
- Every function is like a variable and can be passed
- Use rec keyword before a recursive function, it's looks like pain in the ass but it's recommended

Util functions:
- int_of_string (*converts string to int)
- Float.of_int (*converts float to int*)

Type Inference:
- Types are inferred automatically like auto keyword in Cpp

Tuples:

```ocaml
let a_tuple = (3, "three")
val a_tuple : int * string = (3, "three")
let another_tuple = (3, "four", 5.) ;;
val another_tuple : int*string*float = (3, "four", 5.)
```

Extract components with this
```ocaml
let (x,y) = a_tuple
val x: int = 3
val y: string = "three"
```

IO:

```ocaml
(* Then define read_lines *)
let rec read_lines () =
  try
    let line = read_line () in
    int_of_string line :: read_lines()
  with
    End_of_file -> []
```

Main:

```ocaml
let () =
    let n::arr = read_lines() in
    let ans = f n arr in
    List.iter (fun x -> print_int x; print_newline ()) ans;;
```

When to use semicolon or let () = and why do we use it in first place ??
I didn't understand what's called the match sequencing Match

Eg:

```ocaml
let rec length_of_list lst =
        match lst with
        | [] -> 0
        | [x] -> 1
        | x::xs -> 1 + length_of_list xs

let a = [1; 2; 3;]
let ans = length_of_list a;; (*If we don't place double semicolon then this program will fail saying ans is not Bound*)
print_endline (string_of_int ans)
```

Actually ocaml says it to use ; (single semicolon but no)

To fix this you can do

```ocaml
let ans = length_of_list a in
print_endline (string_of_int ans)
```

or

```ocaml
let () =  (* Forces sequencing *)
  let ans = length_of_list a in
  print_endline (string_of_int ans)
```

1. Top level binding is visible to later bindings, but not to standalone expressions
2. Let x = ...; Treated as a statement, does not share scope with next line
3. REPL vs FILE REPL auto-sequences, files require explicit sequencing, Always use in or let () in files
4. The double semicolon (;;) isn't needed in .ml files (only in REPL)
