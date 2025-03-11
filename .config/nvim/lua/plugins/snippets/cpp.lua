local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

vim.keymap.set("i", "<Tab>", function()
	ls.jump(1)
end, { silent = true })

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

const int SIZE = 2e5 + 5;

typedef long long ll;

int main() {{
{code}
}}
]],
			{ code = i(0) }
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
