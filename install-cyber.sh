yay -S --needed --noconfirm \
  bless
  binaryninja-free
  binwalk
  foremost
  ghidra
  gnu-netcat
  inetutils
  perl-image-exiftool
  pwndbg
  python-pwntools
  python-pycryptodome
  sherlock
  zsteg
  wireshark-qt

echo "Adding pwndbg config to ~/.gdbinit"
echo 'source /usr/share/pwndbg/gdbinit.py' >> ~/.gdbinit
