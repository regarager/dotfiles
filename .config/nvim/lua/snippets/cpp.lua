---@diagnostic disable: undefined-global

return {
	s(
		"cp",
		fmt(
			[[
#include <bits/stdc++.h>
using namespace std;

#define int long long
#define has(x, y) x.find(y) != x.end()
#define all(x) x.begin(), x.end()
#define YES cout << "YES" << endl;
#define NO cout << "NO" << endl;
#define YESNO(x) cout << (x) ? "YES" : "NO" << endl;
#define DEBUG_MODE true
#define DEBUG if (DEBUG_MODE)
#define NOTDEBUG if (!DEBUG_MODE)

using ld = long double;
using pi = pair<int, int>;
using graph = vector<vector<int>>;

const int SIZE = 2e5 + 5;
const int INF = 1e15;

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
	s("io", fmt([[freopen("{}.in", "r", stdin); freopen("{}.out", "w", stdout);]], { i(1), rep(1) })),
	s(
		"segtree",
		fmt(
			[[
template <typename T, T ID> struct SegTree {{
  int n;
  vector<T> tree;

  SegTree(int n) : n(n), tree(4 * n, ID) {{}}

  SegTree(const vector<T> &a) {{
    n = a.size();
    tree.assign(4 * n, ID);
    build(1, 0, n - 1, a);
  }}

  static T merge(const T &a, const T &b) {{ return {}; }}

  void build(int v, int l, int r, const vector<T> &a) {{
    if (l == r) {{
      tree[v] = a[l];
      return;
    }}
    int m = (l + r) / 2;
    build(v * 2, l, m, a);
    build(v * 2 + 1, m + 1, r, a);
    tree[v] = merge(tree[v * 2], tree[v * 2 + 1]);
  }}

  void update(int v, int l, int r, int pos, T val) {{
    if (l == r) {{
      tree[v] = val;
      return;
    }}
    int m = (l + r) / 2;
    if (pos <= m)
      update(v * 2, l, m, pos, val);
    else
      update(v * 2 + 1, m + 1, r, pos, val);

    tree[v] = merge(tree[v * 2], tree[v * 2 + 1]);
  }}

  void update(int pos, T val) {{ update(1, 0, n - 1, pos, val); }}

  T query(int v, int l, int r, int ql, int qr) {{
    if (qr < l || r < ql)
      return ID;
    if (ql <= l && r <= qr)
      return tree[v];
    int m = (l + r) / 2;
    return merge(query(v * 2, l, m, ql, qr),
                 query(v * 2 + 1, m + 1, r, ql, qr));
  }}

  T query(int l, int r) {{ return query(1, 0, n - 1, l, r); }}
}};
  ]],
			{ i(0) }
		)
	),
	s(
		"fenwick",
		fmt(
			[[
struct Fenwick {{
  int n;
  vector<int> bit;

  Fenwick(int n) : n(n), bit(n, 0) {{}}

  void add(int i, int v) {{
    for (; i < n; i |= i + 1)
      bit[i] += v;
  }}

  int sum(int i) const {{
    int s = 0;
    for (; i >= 0; i = (i & (i + 1)) - 1)
      s += bit[i];
    return s;
  }}

  int range_sum(int l, int r) const {{
    return sum(r) - (l ? sum(l - 1) : 0);
  }}
}};
  ]],
			{}
		)
	),
	s(
		"dsu",
		fmt(
			[[
int parent[SIZE];
int sizes[SIZE];

void make_set(int v) {{
  parent[v] = v;
  sizes[v] = 1;
}}

int find_set(int v) {{
  if (v == parent[v])
    return v;
  return parent[v] = find_set(parent[v]);
}}

void union_sets(int a, int b) {{
  a = find_set(a);
  b = find_set(b);
  if (a != b) {{
    if (sizes[a] < sizes[b])
      swap(a, b);
    parent[b] = a;
    sizes[a] += sizes[b];
  }}
}}
  ]],
			{}
		)
	),
	s(
		"omst",
		t({
			"#include <ext/pb_ds/assoc_container.hpp>",
			"using namespace __gnu_pbds;",
			"template <class T>",
			"using omst = tree<T, null_type, std::less<T>, rb_tree_tag, tree_order_statistics_node_update>;",
		})
	),
}
