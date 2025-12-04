local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"pwn",
		fmt(
			[[
from pwn import *

def setup():
  if args.REMOTE and args.PORT:
    return (remote(args.REMOTE, args.PORT), None, None)
  exe = "./" + args.EXE
  return (process(exe), ELF(exe), ROP(ELF(exe)))

p, elf, rop = setup()

{}
      ]],
			{ i(1) }
		)
	),
}
