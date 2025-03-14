
Create music with the Commodore 64
==================================

This repository deals with every aspect of the SID 6581 music creation: basic, asm, trackers etc

At the moment it is particularly focused on giving a placeholder for the BASIC code found in the "Commodore 64 Music Book" and on SID + Arduino.


The Commodore 64 Music Book
---------------------------

The Commodore 64 Music Book can be found there:


- https://archive.org/details/The_Commodore_64_Music_Book

It is a valuable tool for learning how the 6581 SID chip works.

The scripts here are used with a Linux or Unix shell and the Vice emulator.

You can also directly run the compiled .prg files with the Vice emulator.


- The prg/ folder contains all the precompiled basic code from the book (it's ascii code in basic form readable by the c64 emulator)
- The lc_bas/ is an intermediary format, needed by the petcat converter, you can just forget about it, it's just the BASIC code in lowercase.
- On Linux / Unix just run ./compile_all.sh and it will regenerated all files into the prg folder.

To run the .prg with the vice emulator, type ``x64 -autostartprgmode 1 your_program.prg``


SID + Arduino
-------------

We're hosting here at the moment two different projects:


- sid_midi: Create a cheap and simple midi sid synth with an arduino
- sid_player: A SID player for your psid tunes.

See also this repository of the Sid Arduino Lib maintainer:


- https://github.com/daitangio/sid-arduino-lib


Links
-----


- See also: https://github.com/mikerofone/c64stuff/tree/main/lftkryo-jam

.. rst code generated by txt2tags 2.6. (http://txt2tags.org)
.. cmdline: txt2tags readme.t2t
