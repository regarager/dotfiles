---@diagnostic disable: undefined-global

return {
	s(
		"cp",
		fmt(
			[[
#include <bits/stdc++.h>
#define int long long
using namespace std;

using ld = long double;
using pi = pair<int, int>;
using vi = vector<int>;
using vb = vector<bool>;
using graph = vector<vector<int>>;

// clang-format off
#define has(x, y) x.find(y) != x.end()
#define all(x) x.begin(), x.end()
#define between(x, a, b) make_pair(lower_bound(x.begin(), x.end(), a), --upper_bound(x.begin(), x.end(), b))
#define YES cout << "YES" << endl;
#define NO cout << "NO" << endl;
#define DEBUG_MODE true
#define DEBUG if (DEBUG_MODE)
#define NOTDEBUG if (!DEBUG_MODE)
#define print(x) for (auto it : x) {{ cout << it << " "; }} cout << endl
#define printm(x) for (auto it : x) {{ cout << it.first << ": " << it.second << endl; }} cout << endl
#define printmv(x) for (auto it : x) {{ cout << it.first << ": "; print(it.second); }}
#define printn(x, n) for (int i = 0; i < n; i++) {{ cout << x[i] << " \n"[i == n - 1]; }}
// clang-format on

const int SIZE = 2e5 + 5;

signed main() {{
  {}
}}
]],
			{ i(1) }
		)
	),
	s(
		"sieve",
		t(
			"vector<bool> sieve(SIZE, true); for (int i = 2; i < SIZE; i++) { if (!sieve[i]) continue; for (int j = i * 2; j < SIZE; j += i) sieve[j] = false; }"
		)
	),
	s("primes", t("vector<int> primes; for (int i = 2; i < SIZE; i++) { if (sieve[i]) primes.push_back(i); }")),
	s("fastio", t("ios::sync_with_stdio(0); cin.tie(0); cout.tie(0);")),
	s(
		"cases",
		fmt(
			[[
  int t;
  cin >> t;
  while (t--) {{
    {}
  }}
  ]],
			{ i(1) }
		)
	),
}
