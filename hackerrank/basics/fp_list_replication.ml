let rec read_lines () =
    try let line = read_line () in
        int_of_string (line) :: read_lines()
    with
        End_of_file -> []

let rec repeat_element n x = 
    if n <= 0 then [] 
    else x :: repeat_element (n-1) x 
    
let rec f n arr = (*Complete this function*)
(*     List.concat (List.map(fun x -> repeat_element n x) arr) *)
    match arr with 
    | [] -> [] 
    | x::rest -> 
        let repeated = repeat_element n x in 
        repeated @ f n rest 
    
let () =
    let n::arr = read_lines() in
    let ans = f n arr in
    List.iter (fun x -> print_int x; print_newline ()) ans;;
