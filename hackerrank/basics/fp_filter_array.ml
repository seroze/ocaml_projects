(* Enter your code here. Read input from STDIN. Print output to STDOUT *)

let rec filter_list delim lst =
  match lst with
  | [] -> []
  | hd :: tl ->
      if hd < delim then hd :: filter_list delim tl
      else filter_list delim tl
;;

let rec read_input acc =
  try
    let line = read_line () in
    read_input (int_of_string line :: acc)
  with 
    | End_of_file -> List.rev acc
;;

let () =
  let delim = read_int () in
  let lst = read_input [] in
  let filtered = filter_list delim lst in
  List.iter (Printf.printf "%d\n") filtered
