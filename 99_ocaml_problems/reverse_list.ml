let rec reverse_list lst = 
	match lst with 
	| [] -> [] 
	| x::xs -> reverse_list xs @ [x] 

let a = [1; 2; 3;]
let ans = reverse_list a   (*If we don't place double semicolon then this program will fail saying ans is not Bound*)
let () = 
	print_endline (string_of_int ans)
