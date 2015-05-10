#include <MIDI.h>
#include "noteList.h"
#include "pitches.h"

#include <SID.h>

/************************************************************************

        Arduino controls an
	Atmega8 MOS6581 SID Emulator
        by softare serial line
        
	( SID = Sound Interface Device )

        


****************************************************************************

	date	authors					version		comment
	======	======================	=======		==============================
	2007 	(ch) Christoph Haberer	V1.0		First implementation
	2012 	Mario Patino    	    V1.1		Adapted for Arduino SID Library
    2015    Eric Forgeot            V1.2        Adapted for midi input

	Versions:

	V1.0
	- 2 channel random pitch

	V1.1
	- Adapted to work with the Arduino SID Library
    
    V1.2
    - Use your sid arduino as a midi synth!
    Some parts heavily borrowed from the cheapsynth projects and from the arduino midi lib

***************************************************************************/
/***************************************************************************
 *   
 *   (c) 2007 Christoph Haberer, christoph(at)roboterclub-freiburg.de
 *
 ***************************************************************************
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation version 2 of the License,                *
 *   If you extend the program please maintain the list of authors.        *
 *   If you want to use this software for commercial purposes and you      *
 *   don't want to make it open source, please contact the authors for     *
 *   licensing.                                                            *
 ***************************************************************************/
 
#define OFF 0
#define SETTRIANGLE_1	4,0x11,5,0xBB,6,0xAA,
#define SETRECTANGLE_1	4,0x41,5,0x24,6,0xAA, 
#define SETSAWTOOTH_1	4,0x21,5,0xBB,6,0xAA,  
#define C4_1	1,0x11,0,0x25,
#define CONTROLREG 4 // SID control register address

// waveforms
#define SETNOISE_1 	4,0x81,5,0xBB,6,0xAD, // SID register setup to create noise

#define SETNOSOUND_1 	4,0x00,5,0xBB,6,0xAD, // SID register setup to create no sound

SID mySid;

// SID END


int maxmode=4;
byte mode=0;


MIDI_CREATE_DEFAULT_INSTANCE();

// use #define for CONTROL_RATE, not a constant
#define CONTROL_RATE 128 // powers of 2 please

// This example shows how to make a simple synth out of an Arduino, using the
// tone() function. It also outputs a gate signal for controlling external
// analog synth components (like envelopes).


// <!> Use CHANNEL 1 !!

static const unsigned sGatePin     = 13;
static const unsigned sAudioOutPin = 9;
static const unsigned sMaxNumNotes = 16;
MidiNoteList<sMaxNumNotes> midiNotes;

float shifted=0.1f;

#define LED 13                   // LED pin on Arduino Uno

void BlinkLed(byte num)         // Basic blink function
{
    for (byte i=0;i<num;i++)
    {
        digitalWrite(LED,HIGH);
        delay(100);
        digitalWrite(LED,LOW);
        delay(100);
    }
}


// -----------------------------------------------------------------------------

inline void handleGateChanged(bool inGateActive)
{
    digitalWrite(sGatePin, inGateActive ? HIGH : LOW);
}

inline void pulseGate()
{
    handleGateChanged(false);
    delay(1);
    handleGateChanged(true);
}

// -----------------------------------------------------------------------------

    #define CHANNEL1  0
    #define CHANNEL2  7
    #define CHANNEL3  14
    
void handleNotesChanged(bool isFirstNote = false)
{
    if (midiNotes.empty())
    {
        handleGateChanged(false);
        //noTone(sAudioOutPin);
      setwaveform_nosound(CHANNEL1);
      //set_frequency(0,CHANNEL1); // change noise generator frequency
    }
    else
    {
        // Possible playing modes:
        // Mono Low:  use midiNotes.getLow
        // Mono High: use midiNotes.getHigh
        // Mono Last: use midiNotes.getLast

        byte currentNote = 0;
        if (midiNotes.getLast(currentNote))
        {
           // tone(sAudioOutPin, sNotePitches[currentNote]);
           
              // n=zufall()*8;
  
  /*            
  setwaveform_triangle(CHANNEL1);
  setwaveform_rectangle(CHANNEL2);
  setwaveform_sawtooth(CHANNEL3);
  
              set_frequency(sNotePitches[currentNote],CHANNEL1); // change noise generator frequency
              set_frequency(sNotePitches[currentNote],CHANNEL2); // change noise generator frequency
              set_frequency(sNotePitches[currentNote],CHANNEL3); // change noise generator frequency
              
              */
               if (mode==0) {
               setwaveform_triangle(CHANNEL1);
              // setwaveform_rectangle(CHANNEL1);
              // setwaveform_sawtooth(CHANNEL1);
               }

             if (mode==1) {
               setwaveform_rectangle(CHANNEL1);
   
               }
               
             if (mode==2) {
               setwaveform_sawtooth(CHANNEL1);
            
               }

             if (mode==3) {
               setwaveform_noise(CHANNEL1);
               }

             if (mode==4) {
               setwaveform_triangle(CHANNEL1);
               }
               
              set_frequency(sNotePitches[currentNote],CHANNEL1); // change noise generator frequency
                      
               
             
                 // n=zufall()*2;
                 // set_frequency(n*17,CHANNEL2); // change noise generator frequency

            if (isFirstNote)
            {
                handleGateChanged(true);
            }
            else
            {
                pulseGate(); // Retrigger envelopes. Remove for legato effect.
            }
        }
    }
}

// -----------------------------------------------------------------------------

void HandleProgramChange (byte channel, byte number)
{
 // modOffset = modOffsets[number%15];
 // UpdateFreqs();
 // !! we use this because I don't know how to use HandleContinue
 
   // READ HF,LF,DR
   // play(25,177,250);
 
  mode++; 
      if (mode==0) {  // triangle
               BlinkLed(1); 
                 
                 // Attack/decay
              //  mySid.set_register(5,9);
                //mySid.set_register(5,190);
                // SUSTAIN/RELEASE
              //  mySid.set_register(6,9);
                
                
                // Violino (per dire)
                //mySid.set_register(5,88);
                //mySid.set_register(6,89);
               
                // Piano D=9, il resto zero
                //mySid.set_register(5,9);
                //mySid.set_register(6,0);
                
               //   mySid.set_register(24,15); // SET MAX VOLUME
  
               }

             if (mode==1) { // rectangle
               BlinkLed(2);            
               }
               
             if (mode==2) {  // saw
                    BlinkLed(3);             
               }

             if (mode==3) {  // noise

                              BlinkLed(4);             
               
               }
             if (mode==4) {

                 mode=0;             
               
               }
  Serial.println("Mode: ");  Serial.println(mode);
 {if (mode>maxmode) mode = 0;} //currently has a silent mode at the end so you know where you are : )
}


// ================================

void HandleControlChange (byte channel, byte number, byte value)
{
// http://www.indiana.edu/~emusic/cntrlnumb.html

/*
Serial.end(); // sample debug code to check values through (noisy) terminal interface 
Serial.begin(38400);
Serial.print("  number:");   
Serial.print(number);
Serial.print(" value:");   
Serial.println( value );
Serial.println();
Serial.end();
Serial.begin(31250);
*/

  switch(number) {
//  case 3: // could trap different controller IDs here

  case 1: // modulation wheel
   //   BlinkLed(value);   
    // setenvelope(value, CHANNEL1);
    // filter
    mySid.set_register(17,value);
    Serial.print(value);
  break;

  case 7: // volume wheel
    // volume
      mySid.set_register(24,value); // SET VOLUME
    Serial.print(value);
  break;
  }

}



// ==============


void HandlePitchBend (byte channel, int bend)
{
//bend value from +/-8192, translate to 0.1-8 Hz?
shifted= float ((bend+8500) /2048.f ) +0.1f;  
    // filter
    mySid.set_register(17,shifted);
    Serial.print(shifted);

}





//=====================

void handleNoteOn(byte inChannel, byte inNote, byte inVelocity)
{
    const bool firstNote = midiNotes.empty();
    midiNotes.add(MidiNote(inNote, inVelocity));
    handleNotesChanged(firstNote);
}

void handleNoteOff(byte inChannel, byte inNote, byte inVelocity)
{
    midiNotes.remove(inNote);
    handleNotesChanged();
}

// -----------------------------------------------------------------------------


void play(byte hf, byte lf, byte dr){
  
  mySid.set_register(1,hf);
  mySid.set_register(0,lf);
  // CONTROL REGISTER = 4
  
  Serial.print(F("HF/LF:"));
  Serial.print(hf*256+lf);
  Serial.println("");
  mySid.set_register(4,33);
  delay(dr*2);
  mySid.set_register(4,32);
}

void play(byte hf, byte lf, byte dr,byte hf1, byte lf1, byte dr1){
  play(hf,lf,dr);
  play(hf1,lf1,dr1);
}


void setup()
{
    Serial.begin(9600); 
    pinMode(sGatePin,     OUTPUT);
    pinMode(sAudioOutPin, OUTPUT);
    MIDI.setHandleNoteOn(handleNoteOn);
    MIDI.setHandleNoteOff(handleNoteOff);
    MIDI.setHandleProgramChange(HandleProgramChange); 
    MIDI.setHandleControlChange(HandleControlChange);
    MIDI.begin();
     mySid.begin();
}

void setwaveform_triangle(uint8_t channel)
{
  uint8_t dataset[]={ SETTRIANGLE_1 C4_1 0xFF };
  //  uint8_t dataset[]={SETNOISE_1 C4_1 0xFF};
  uint8_t n=0; 
  
  while(dataset[n]!=0xFF) 
  {
     mySid.set_register(channel+dataset[n], dataset[n+1]); 
     // register address, register content
     n+=2;
  }
}

void setwaveform_rectangle(uint8_t channel)
{
  uint8_t dataset[]={ SETRECTANGLE_1 C4_1 0xFF };
//uint8_t dataset[]={ SETTRIANGLE_1 C4_1 0xFF };
  //  uint8_t dataset[]={SETNOISE_1 C4_1 0xFF};
  uint8_t n=0; 
  
  while(dataset[n]!=0xFF) 
  {
     mySid.set_register(channel+dataset[n], dataset[n+1]); 
     // register address, register content
     n+=2;
  }
}

void setwaveform_sawtooth(uint8_t channel)
{
  uint8_t dataset[]={ SETSAWTOOTH_1 C4_1 0xFF };
  //  uint8_t dataset[]={SETNOISE_1 C4_1 0xFF};
  uint8_t n=0; 
  
  while(dataset[n]!=0xFF) 
  {
     mySid.set_register(channel+dataset[n], dataset[n+1]); 
     // register address, register content
     n+=2;
  }
}

void setwaveform_noise(uint8_t channel)
{
  uint8_t dataset[]={ SETNOISE_1 C4_1 0xFF };
  //  uint8_t dataset[]={SETNOISE_1 C4_1 0xFF};
  uint8_t n=0; 
  
  while(dataset[n]!=0xFF) 
  {
     mySid.set_register(channel+dataset[n], dataset[n+1]); 
     // register address, register content
     n+=2;
  }
}


void setwaveform_nosound(uint8_t channel)
{
  uint8_t dataset[]={ SETNOSOUND_1 C4_1 0xFF };
  //  uint8_t dataset[]={SETNOISE_1 C4_1 0xFF};
  uint8_t n=0; 
  
  while(dataset[n]!=0xFF) 
  {
     mySid.set_register(channel+dataset[n], dataset[n+1]); 
     // register address, register content
     n+=2;
  }
}



void set_frequency(uint16_t pitch,uint8_t channel)
{
    mySid.set_register(channel, pitch&0xFF); // low register adress
    mySid.set_register(channel+1, pitch>>8); // high register adress
    }



uint8_t zufall()
{
	static uint16_t startwert=0x0AA;

	uint16_t temp;
	uint8_t n;
		
	for(n=1;n<8;n++)
	{
		temp = startwert;
		startwert=startwert << 1;
	
		temp ^= startwert;
		if ( ( temp & 0x4000 ) == 0x4000 ) 
		{ 
			startwert |= 1;
		}
	}
	
	return (startwert);
}


/************************************************************************
	
    main loop

    create space ship noise
    
************************************************************************/   


void loop()
{
    MIDI.read();
  uint16_t n;
  uint8_t flag,k;
  uint16_t soundindex=0;

  

//  setwaveform_triangle(CHANNEL1);
//  setwaveform_triangle(CHANNEL2);
//  setwaveform_triangle(CHANNEL3);
    

}

