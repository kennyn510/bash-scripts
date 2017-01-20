#!/bin/bash
# Generate random strong passwords

echo -e "Select Password Strength: "
echo -e "1) Overkill "
echo -e "2) Very Strong "
echo -e "3) Strong "
echo -e "4) Hard "
echo -e "q) quit "
read -p "> " choice

if [ "$choice" = "1" ]; then
	echo "OVERKILL: "; openssl rand -base64 32
elif [ "$choice" = "2" ]; then
	echo "VERY STRONG: "; dd if=/dev/urandom bs=1 count=32 2>/dev/null | base64 -w 0 | rev | cut -b 2- | rev
elif [ "$choice" = "3" ]; then
	echo "STRONG: "; date | sha256sum | base64 | head -c 32 ; echo
elif [ "$choice" = "4" ]; then
	echo "HARD: "; date | md5sum
elif [ "$choice" = "q" ]; then
	echo -e "Peace"; exit 0;
else
	echo "I don't understand that.."
fi
