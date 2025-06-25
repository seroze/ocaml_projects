(* Enter your code here. Read input from STDIN. Print output to STDOUT *)

let rec hello_worlds n = 
    if n > 0 then 
        begin 
            print_endline "Hello World";
            hello_worlds (n-1)
        end 
        
;;

let () = 
    let n = read_int() in 
    hello_worlds n 
;;
