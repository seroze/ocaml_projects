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
let rec quicksort lst =
  match lst with
  | [] -> []
  | pivot :: rest ->
    let left = List.filter (fun x -> x < pivot ) rest in
    let right = List.filter (fun x -> x >= pivot ) rest in
    quicksort left @ [pivot] @ quicksort right

(* Implement a factorial with Tail Recursion *)
(* What's tail recusion by the way and why is it better than normal recursion *)
(* if recursion is the last call then compiler can avoid growing the call stack
it's like a for loop *)
let rec factorial n =
  let rec helper acc k =
    if k <= 1 then acc else helper (acc*k) (k-1)
  in
  helper 1 n

(* Fast exponentiation (Tail-recursive)*)
let rec power x n =
  if n = 0 then 1
  else if n mod 2 = 0 then
    let half = power x (n/2) in
    half * half
  else
    x * power x (n-1)

(* Flatten a list *)
type 'a nested_list =
  | Elem of 'a
  | List of 'a nested_list lst

let rec flatten lst =
  match lst with
  | Elem x -> [x]
  | List xs -> List.concat (List.map flatten xs)

(* Test *)
let nested = List [Elem 1; List [Elem 2; Elem 3;]; Elem 4] in
flatten nested (* Should return [1; 2; 3; 4] *)

(* Zipping two lists *)
let rec zip xs ys =
  match (xs, ys) with
    | (x::xt, y::yt) -> (x, y) :: zip xt yt
    | _ -> [] (* default case *)


(*Algebraic data types *)
(* bst *)
