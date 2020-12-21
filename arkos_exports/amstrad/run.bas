10 MEMORY &7FFF
20 LOAD "PLAYMUS.BIN",&8000 
35 MODE 0:ink 0,0:ink 1,23:ink 2,21:ink 3,13:ink 4,10:ink 5,25 :ink 6,26:ink 7,15:ink 8,0:ink 9,0:ink 10,0:ink 11,0:ink 12,0:ink 13,0:ink 14,0:ink 15,0
36 load"IMAGE.SCR",&C000 
40 call &8000   'initialize the music.
50 call &bd19:call &8003   'plays one frame of the music, at 50hz.
60 if inkey(47)<>0 then 50  'loops as long as space is not pressed.
70 call &4006   'stops the music.
80 REM run"other  'run another program if needed