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
}
