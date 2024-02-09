#!/bin/bash
color="\033[0;32m"
end="\033[0m"

ROOT=$(dirname "$(readlink -f "$0")")
echo "${color}Joining the fragments...${end}"
cat $ROOT/fragments/vendor.a* > $ROOT/fragments/vendor.img.xz
echo "${color}Unpacking...${end}"
unxz $ROOT/fragments/vendor.img.xz
echo "${color}Done!${end}"
