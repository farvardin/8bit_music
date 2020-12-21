        ;This creates a program to be loaded in BASIC, on CPC, so that
        ;you can use a song in BASIC.
        ;This player focuses on the AKG player, but you can actually use the one you want.
        
        ;Assembles this with RASM, loads the binary in Basic (load"prg.bin",&4000 for example).
        ;Then type:
        ;10 call &4000  'init
        ;20 call &bd19:call &4003  'play
        ;30 if inkey(47)<>0 then 20 'loops as long as space is not pressed.
        ;40 call &4006   'stop
        
        org #8000       ;Should not be too low in Basic (between #2000 and #9000, for example).
                        ;If you change this, modify too the addresses in the BASIC example above!
        limit #a600     ;Makes sure we don't erase the system!
     
        ;Hooks to call the player easily in Basic.
        jp Init   
        jp Play
        jp StopMusic
        
        ;Initializes the music
Init:   ld hl,Music
        ld a,0          ;The subsong number (0 is the first one).
        call Player + 0
        ret
     
        ;Plays the music, saves the registers the system will need.   
Play:
        di
        ex af,af'
        exx
                ;Only a few registers needs to be saved as the system requires them.
                push af
                push bc
                push ix
                push iy
                call Player + 3
                pop iy
                pop ix
                pop bc
                pop af
        ex af,af'
        exx
        
        ei
        ret
        
        ;Stops the music.
StopMusic:
        di
        ex af,af'
        exx
                ;Same as above.
                push af
                push bc
                push ix
                push iy
                call Player + 6
                pop iy
                pop ix
                pop bc
                pop af
        ex af,af'
        exx

        ei        
        ret
        
Player:
        include "PlayerAkg.asm"         ;The player. Loads the one you want (AKG, AKM, Lightweight, AKY).
        
Music:
        include "../music_src/music.asm"    ;The music.
        
        print "End:", {hex}$
        
