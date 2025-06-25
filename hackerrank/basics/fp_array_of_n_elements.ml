(* returns an array of n elements *)

let rec ones_list n = 
    if n <= 0 then [] 
    else 1 :: ones_list (n-1)    ;; 


let make_array n = (* TODO *)
(* let's return n 1's *)
    (* ones_list n ;; *)
    (* Array.make n 1;;  *)
    
    ones_list n ;;
    

let () =
    let n = int_of_string (read_line ()) in
    let arr = make_array n in
    List.iter ( Printf.printf "%d " ) arr
