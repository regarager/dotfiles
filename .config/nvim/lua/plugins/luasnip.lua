return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local rep = require("luasnip.extras").rep
		local fmt = require("luasnip.extras.fmt").fmt

		ls.add_snippets("cpp", {
			s(
				"cf",
				fmt(
					[[
#include <bits/stdc++.h>
using namespace std;

#define YES cout << "YES" << endl;
#define NO cout << "NO" << endl;
#define END return 0
#define DEBUG_MODE true
#define DEBUG if (DEBUG_MODE)
#define NOTDEBUG if (!DEBUG_MODE)

const int SIZE = {size};

typedef long long ll;

int main() {{

}}
]],
					{ size = i(0) }
				)
			),
		})

		ls.add_snippets("cpp", {
			s(
				"ioopt",
				fmt(
					[[
ios::sync_with_stdio(0);
cin.tie(0);
cout.tie(0);
          ]],
					{}
				)
			),
		})
	end,
}
