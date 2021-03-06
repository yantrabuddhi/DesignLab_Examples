/*
 Gadget Factory
 Arcade MegaWing Example
 To learn more about the Papilio Schematic Library please visit http://learn.gadgetfactory.net
 
 Hardware:
  Connect an Audio Wing to the CH WingSlot
  
 Notes:
 The Papilio One 500K Hyperion Variant does not have enough code space to run the YMPlayer and VGA output at the same time. 
 Please use the VGA and Audio code examples separately with the Arcade MegaWing circuit.

 created 2012
 by Jack Gassett
 http://www.gadgetfactory.net
 
 This example code is in the public domain.
 */
#define circuit Arcade_MegaWing

#ifndef __ZPUINO_PAPILIO_ONE__
#include <SD.h>
#include <SPI.h>
#include "YM2149.h"
#include "SmallFS.h"
#include "ymplayer.h"
#include "ramFS.h"
#include "cbuffer.h"
#include <Timer.h>
#endif 

#include "HQVGA.h"

#ifndef __ZPUINO_PAPILIO_ONE__
YMPLAYER ymplayer;
YM2149 ym2149;
#endif 

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

#ifndef __ZPUINO_PAPILIO_ONE__  
   //Start SmallFS
  if (SmallFS.begin()<0) {
	//Serial.println("No SmalLFS found.");
  }
  else{
     //Serial.println("SmallFS Started.");
  }   

  //Set what wishbone slot the ym2149 device is connected to.  
  ymplayer.setup(&ym2149,6); 
  
  ym2149.V1.setVolume(11);
  ym2149.V2.setVolume(11);
  ym2149.V3.setVolume(11);   

  ymplayer.loadFile("music.ymd");
  ymplayer.play(true);
  
 //Setup timer for YM and mod players, this generates an interrupt at 17Khz
  Timers.begin();
    int r = Timers.periodicHz(17000, (bool(*)(void*))timer, 0, 1);
    if (r<0) {
        Serial.println("Fatal error!");
    }
#endif      
  
  //Setup VGA Hello World
  VGA.begin(VGAWISHBONESLOT(9),CHARMAPWISHBONESLOT(10));
  VGA.clear();
  VGA.setBackgroundColor(BLACK);
  VGA.setColor(RED);
  VGA.printtext(35,10,"Hello World");
  VGA.printtext(15,30, "Hello World RED");
  VGA.setColor(GREEN);
  VGA.printtext(15,40, "Hello World GREEN");
  VGA.setColor(BLUE);
  VGA.printtext(15,50, "Hello World BLUE");
  VGA.setColor(YELLOW);
  VGA.printtext(15,60, "Hello World YELLOW");
  VGA.setColor(PURPLE);
  VGA.printtext(15,70, "Hello World PURPLE");
  VGA.setColor(CYAN);
  VGA.printtext(15,80, "Hello World CYAN");
  VGA.setColor(WHITE);
  VGA.printtext(15,90, "Hello World WHITE");   
  VGA.setBackgroundColor(WHITE);  
  VGA.setColor(BLACK);  
  VGA.printtext(15,100, "Hello World BLACK");     

}

#ifndef __ZPUINO_PAPILIO_ONE__  
bool timer(void)
{
  //Interrupt runs at 17KHz
  ymplayer.zpu_interrupt(); 
  //Serial.println("In Timer");
}
#endif 

void loop() {
  // put your main code here, to run repeatedly: 
#ifndef __ZPUINO_PAPILIO_ONE__    
  if (ymplayer.getPlaying() == 1)
    ymplayer.audiofill();
#endif 
}
