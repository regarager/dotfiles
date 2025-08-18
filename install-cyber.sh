echo "Setting up Blackarch repos"
curl -O https://blackarch.org/strap.sh
chmod +x ./strap.sh
sudo ./strap.sh
rm ./strap.sh

yay -S --needed \
  bless binaryninja-free binwalk foremost ghidra gnu-netcat inetutils perl-image-exiftool pwndbg python-pwntools python-pycryptodome sherlock testdisk zsteg wireshark-qt

echo "Adding pwndbg config to ~/.gdbinit"
echo 'source /usr/share/pwndbg/gdbinit.py' >> ~/.gdbinit
