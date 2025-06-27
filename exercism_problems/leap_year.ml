let leap_year year = 
    if year mod 4 <> 0 then false 
    else if year mod 100 <> 0 then true 
    else year mod 400 = 0 
    (* failwith "'leap_year' is missing" *)

