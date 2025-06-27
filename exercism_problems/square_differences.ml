let square_of_sum n =

    (* failwith "'square_of_sum' is missing" *)
    let total = ref 0 in
    for i = 1 to n do
      total := !total + i
    done;
    !total * !total

let sum_of_squares n =

    (* let ans = (n*(n+1)/2)**2  *)
    let total = ref 0 in
    for i = 1 to n do
      total := !total + i*i
    done;

    !total

    (* failwith "'sum_of_squares' is missing" *)

let difference_of_squares n =
    square_of_sum n - sum_of_squares n
    (* failwith "'difference_of_squares' is missing" *)

let () =
  let res = difference_of_squares 10 in
  print_int res
