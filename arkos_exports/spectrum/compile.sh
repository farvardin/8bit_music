

# if needed:
#chmod +x compile.sh bin2tap makesna rasm


# generate music.bin
../bin/rasm PlayerAkgTester_SPECTRUM.asm -o music


# generate music.sna
../bin/makesna music.sna 33155 music.bin 33153


# generate music.tap
cp music.bin code.bin

# use bin2tab from zxspectrumutils
# generates code.tap
../bin/bin2tap -a 33153 code.bin

# generate code.bin.tap
#./bin2tap0  33153 whatever code.bin


zmakebas -a 10 -o loader.tap loader.bas

#cat loader.tap code.tap LOADING_SCREEN.TAP  > final.tap
cat loader.tap code.tap  > music.tap
echo "Write music.tap"