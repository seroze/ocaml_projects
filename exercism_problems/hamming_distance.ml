type nucleotide = A | C | G | T
(*
let hamming_distance a b =
  let n = String.length a in
  let ans = ref 0 in
  for i=0 to n-1 do
    if String.get a i <> String.get b i then
      ans := !ans + 1
  done;
  !ans

type nucleotide = A | C | G | T *)

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
