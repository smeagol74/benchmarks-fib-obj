struct Fib {
	val: u32,
}

impl Fib {
	pub fn new(n: u32) -> Fib {
		Fib { val: n }
	}

	pub fn value(&self) -> u32 {
		if self.val <= 2 {
			return 1;
		}

		return Fib::new(self.val - 1).value() + Fib::new(self.val - 2).value();
	}

}

fn main() {
	for _ in 0..10 {
		println!("{}", Fib::new(40).value());
	}
}


