(* http://www.balancer.ru/g/p1818588 *)

class fib n =
	object
		val v = n
		method value = match v with
			1 | 2 -> 1
			| i -> (new fib(i-1))#value + (new fib(i-2))#value
	end;;

let fib = new fib(40);;
print_int(fib#value);;
