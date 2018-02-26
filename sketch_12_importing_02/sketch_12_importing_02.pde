// 12 importing a library
import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;

// http://code.compartmental.net/minim/audioplayer_class_audioplayer.html

Minim minim;
AudioPlayer player;

void setup() {
  size(400,400);
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  
  // loadFile() looks in your data folder inside your sketch folder
  player = minim.loadFile("Secret.mp3");
  // ...using public domain sounds from 
  // https://freesound.org/people/Kastenfrosch/packs/10069/
  
  player.play();
}

void draw() {
}