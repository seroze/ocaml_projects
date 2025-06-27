let rec length_of_list lst = 
	match lst with 
	| [] -> 0 
	| [x] -> 1 
	| x::xs -> 1 + length_of_list xs 

let a = [1; 2; 3;]  
let ans = length_of_list a;; 
print_endline (string_of_int ans)
