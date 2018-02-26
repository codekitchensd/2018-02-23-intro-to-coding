// 12 importing a library
import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;

// http://code.compartmental.net/minim/audioplayer_class_audioplayer.html

Minim minim;
AudioPlayer outsideSound, insideSound, clickSound;

color red, blue, green, yellow, black, purple;

void setup() {
  size(400,400);
  
  red = color(255,50,50);
  blue = color(50,50,255);
  green = color(50,255,50);
  yellow = color(255,255,50);
  black = color(0,0,0);
  purple = color(255,50,255);
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  
  // loadFile() looks in your data folder inside your sketch folder
  outsideSound = minim.loadFile("Secret.mp3");
  insideSound = minim.loadFile("SprungInnen.mp3");
  clickSound = minim.loadFile("Sound5.mp3");
  // ...using public domain sounds from 
  // https://freesound.org/people/Kastenfrosch/packs/10069/
  
  rectMode(CENTER);
}

void draw() {
  color bgColor = yellow;
  color fillColor = red;
  if (mouseX > width/3 && mouseX < 2*width/3 && 
      mouseY > height/4 && mouseY < 3*height/4 ) {
    //println("inside");
    bgColor = green;
    fillColor = blue;
    insideSound.play();
    outsideSound.pause();
    outsideSound.rewind();
  } else {
    //println("outside", mouseY, height*0.75);
    bgColor = yellow;
    fillColor = red;
    outsideSound.play();
    insideSound.pause();
    insideSound.rewind();
  }
  if (mousePressed) {
    bgColor = black;
    if ( clickSound.isPlaying() ) {
      clickSound.rewind();
    }
    clickSound.play();
  } 
  background(bgColor);
  fill(fillColor);
  stroke(blue);
  rect(width/2,height/2, width/3, 2*height/4);
  
  fill(purple);
  noStroke();
  rect(mouseX, mouseY, 20, 20);
}