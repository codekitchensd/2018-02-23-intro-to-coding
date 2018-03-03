import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;
TickRate rateControl;
FFT fft;
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

  rateControl = new TickRate(1.f);
  rateControl.setInterpolation( true );

  song = new FilePlayer(minim.loadFileStream("song.mp3"));
  out = minim.getLineOut();    
  fft = new FFT( out.bufferSize(), out.sampleRate() );                
  song.patch(rateControl).patch(out);

  speed = new Square(0, 0, width, coralgreen, CORNER);
  play = new Square(0, speed.size, speed.size/2, green, CORNER);
  stop = new Square(play.size, speed.size, play.size, red, CORNER);

}

void draw()
{
  background(burntorange);
  play.drawMe();
  stop.drawMe();
  speed.drawMe();

  if(play.mouseInside() && mousePressed) {
     song.loop();
  } else if (stop.mouseInside() && mousePressed) {
     song.pause();
  } else if (speed.mouseInside() == true) {
    float rate = map(mouseX, speed.x, (speed.size + speed.x), 0.0f, 3.f);
    println("MouseX: ", mouseX, " Rate: ", rate);
    rateControl.value.setLastValue(rate);
  }

  fft.forward( out.mix );
  fill(yellow);
  for(int i = 0; i < fft.specSize(); i++)
  {
    int barWidth = 3;
    // draw the line for frequency band i, scaling it up a bit so we can see it
    // draw at bottom of speed square
    rect( i*(barWidth+1), speed.size, barWidth, -fft.getBand(i)*2 );
  }
}