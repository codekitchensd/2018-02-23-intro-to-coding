import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;
TickRate rateControl;
FilePlayer song;

color coralgreen = color(111, 247, 138);
color burntorange = color(201, 33, 1);
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color yellow = color(255, 255, 0);

Square play, stop, speed;

void setup()
{
  size(400, 600);

  minim = new Minim(this);

  //this controls rate of playback
  rateControl = new TickRate(1.f);
  rateControl.setInterpolation( true );

  // this loads song from the data folder
  // from freesound: https://freesound.org/people/vollkornbrot/sounds/380165/
  song = new FilePlayer(minim.loadFileStream("song.mp3"));
  out = minim.getLineOut();                    
  song.patch(rateControl).patch(out);

  //I made a new square constructor that takes in the draw mode.
  //in this case CORNER is easier to use because we're trying to line
  //up our squares.
  speed = new Square(0, 0, width, coralgreen, CORNER);
  play = new Square(0, speed.size, speed.size/2, green, CORNER);
  stop = new Square(play.size, speed.size, play.size, red, CORNER);

  background(burntorange);
  play.drawMe();
  stop.drawMe();
  speed.drawMe();
}

void draw()
{
  if(play.mouseInside() && mousePressed) {
     song.loop();
  } else if (stop.mouseInside() && mousePressed) {
     song.pause();
  } else if (speed.mouseInside() == true) {
    float rate = map(mouseX, speed.x, (speed.size + speed.x), 0.0f, 3.f);
    println("MouseX: ", mouseX, " Rate: ", rate);
    rateControl.value.setLastValue(rate);
  }
}