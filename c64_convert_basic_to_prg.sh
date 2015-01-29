#!/usr/bin/env bash

i=$1
tr '[:upper:]' '[:lower:]' < $1 > "${i%%.*}".lc.bas
petcat -w2 -o "${i%%.*}".prg "${i%%.*}".lc.bas
