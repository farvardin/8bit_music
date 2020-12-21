


## Arkos Tracker 2 music export



[Arkos Tracker 2](http://www.julien-nevo.com/arkostracker) is a AY-3-8912 and YM2149 soundchip tracker, for making chiptunes.

It's for 8/16-bit computers from the 80's, such as Amstrad CPC, Atari ST, ZX Spectrum, MSX, Oric, Apple 2, Vectrex, and SHARP MZ-700 (there are now emulator to replay the music on moderne computers).


This repository is for helping to export music into various targets: zx spectrum, Amstrad CPC, [Garvuino](https://github.com/farvardin/garvuino).



You might need those piece of software:

- [rasm](https://github.com/EdouardBERGE/rasm). A recent version is included into the ./bin folder but you might need to compile it yourself on your computer otherwise you might encounter some "Illegal instruction (core dumped)" errors.
- zmakebas (`sudo apt install zmakebas` on Debian based distributions)


### Spectrum


- Export first the music from Arkos Tracker 2 as AKG in "asm source file" option.

You'll get:

 - music_playerconfig.asm
 - music.asm
 
put them in the spectrum folder

in PlayerAkgTester_SPECTRUM.asm check the last line is calling music.asm 
It must also include (in the middle of the code): 
         include "music_playerconfig.asm" 


run ./compile.sh

it will result in a music.sna and music.tap which you can load into your spectrum.


### Amstrad

- Export first the music from Arkos Tracker 2 as AKG in "asm source file" option.

You'll get:

 - music_playerconfig.asm
 - music.asm
 
- use rasm 

./bin/rasm Basic_CPC.asm -o playmus

it will generate "playmus.bin"

read more on http://www.julien-nevo.com/arkostracker/index.php/basic-cpc-integration/ if necessary


- for picture, you can use convimgCpc, load a 160x200 pic in .bmp format which will be interpreted as 320x200, adapte the colors so it displays correctly, use "calculate" which will indicate the most used colords with the values. Use those values in the run.bas to get the correct palette ("0,0:ink 1,23..." will be index 0, index 1 etc)

- send playmus.bin (music + player) in binary format with managedsk, to address 0x8000 (adapt the value if needed, reduce it if your music is too big), and the image image.scr at addresse 0xC000,  and send also run.bas in ascii format. Export the DSK and you're done.




### Garvuino 

use Ay_Emul.exe to convert to psg


then AYPlayer.exe (avray.ru) to convert into .rsf for garvuino




## Licence 

- The PlayerAkg is from the http://www.julien-nevo.com/arkostracker website and is: 

MIT License Copyright (c) 2016-2020 Julien Névo


- bin2tap is from the [zxspectrum-utils](https://sourceforge.net/p/zxspectrumutils/wiki/bin2tap/) projet.

- rasm is from [rasm](https://github.com/EdouardBERGE/rasm) project.

- makeSNA v0.1 by martin.borik
