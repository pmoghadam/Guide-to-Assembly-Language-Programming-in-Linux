#!/bin/bash
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

[ "$#" != "1" ] && exit

ASSEMBLY="$1"
BASENAME="$(basename ${ASSEMBLY} .nasm)"
BASENAME="$(basename ${BASENAME} .asm)"
BASENAME="$(basename ${BASENAME} .s)"

set -e
set -x

nasm -f elf64      "${ASSEMBLY}"   -o "${BASENAME}".o   -l "${BASENAME}".lst
ld   -m elf_x86_64 "${BASENAME}".o -o "${BASENAME}".out
rm "${BASENAME}".o

