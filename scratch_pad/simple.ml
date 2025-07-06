(* Function to find absolute value *)
let abs_val = if x < 0 then -x else x

(* Factorial *)
let rec factorial n =
  if n <= 1 then 1 else n * factorial(n-1)

(* Sum of list *)
let rec sum_list lst =
  match lst with
  |  [] -> 0
  |  h::t -> h + sum_list t

(* Length of a list *)
let rec list_len lst =
  match lst with
  | [] -> 0
  | _ :: t -> 1 + list_length t

(* Reverse a list *)
(* Naive version O(N*N) time complexity *)
let reverse_list lst =
  match lst with
    | [] -> []
    | h::t -> reverse_list t :: h

(* Come up with optimized version *)

(* Higher order function *)
let rec map f lst =
  match lst with
    | [] -> []
    | h::t -> f h :: map f t

(* Filter function *)
let rec filter predicate lst =
  match lst with
  | [] -> []
  | h::t -> if predicate h then h :: filter predicate t else filter predicate t

(* Tuples and records *)
let swap (a, b) = (b, a)

(* or *)
let swap a, b = b, a

(* Distance between two points *)
type point = {x: float; y: float}

let distance p1 p2 =
  sqrt ((p1.x -. p2.x) ** 2. + (p1.y -. p2.y) ** 2.)

(* Implement quick sort *)
