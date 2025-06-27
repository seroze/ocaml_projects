let rec at n lst = 
	match lst with 
		| [] -> None (* Found the element at index n *) 
		| x::xs -> 
			if n = 0 then Some x (* Found the element at index n *)
			else at  (n-1) xs (* Recursively check the rest of the list *) 
;; 

let ans = at 2 ["a"; "b"; "c"; "d" ];;
match ans with 
	| Some s -> print_endline s 
	| None -> print_endline "Index out of bounds"
