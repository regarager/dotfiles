yay -S --needed --noconfirm \
  binaryninja-free
  binwalk
  ghidra
  perl-image-exiftool
  pwndbg
  python-pwntools
  python-pycryptodome
  wireshark-qt
  zsteg

echo "Adding pwndbg config to ~/.gdbinit"
echo 'source /usr/share/pwndbg/gdbinit.py' >> ~/.gdbinit
