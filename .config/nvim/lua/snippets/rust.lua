---@diagnostic disable: undefined-global

return {
	s(
		"cp",
		fmt(
			[[
use std::cell::RefCell;
use std::io::{{self, Read}};

thread_local! {{
    static INPUT: RefCell<std::str::SplitWhitespace<'static>> = {{
        let mut s = String::new();
        io::stdin().read_to_string(&mut s).unwrap();
        let s: &'static str = Box::leak(s.into_boxed_str());
        RefCell::new(s.split_whitespace())
    }};
}}

macro_rules! read {{
    () => {{
        INPUT.with(|it| it.borrow_mut().next().unwrap().parse().unwrap())
    }};
    ($T:ty) => {{
        INPUT.with(|it| it.borrow_mut().next().unwrap().parse::<$T>().unwrap())
    }};
}}

fn solve() {{
    {}
}}

fn main() {{
    let t: usize = read!();
    for _ in 0..t {{
        solve();
    }}
}}
      ]],
			{ i(1) },
			{ delimiters = "{}" }
		)
	),
	s(
		"gcd",
		t({
			"fn gcd(mut a: u64, mut b: u64) -> u64 {",
			"  while b != 0 {",
			"    let temp = b;",
			"    b = a % b;",
			"    a = temp;",
			"  }",
			"  a",
			"}",
		})
	),
	s(
		"modpow",
		t({
			"fn mpow(mut a: u64, mut b: u64, m: u64) -> u64 {",
			"  let mut res = 1;",
			"  a %= m;",
			"",
			"  while b > 0 {",
			"    if b & 1 == 1 {",
			"      res = (res * a) % m;",
			"    }",
			"    a = (a * a) % m;",
			"    b >>= 1;",
			"  }",
			"  res",
			"}",
		})
	),
}
