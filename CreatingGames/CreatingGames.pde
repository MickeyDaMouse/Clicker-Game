import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//images
PImage grass,command,diamond,selected;

//font
PFont fancy;

//modes
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTION = 4;

//target variables
float x,y,d;
float vx,vy;

int score,lives;
int highscore;

//size slider
int sizex = 400;

//sound variables
Minim  minim;
AudioPlayer theme, bump, coin, gameover;

void setup()
{
  size (800,800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  fancy = createFont("Rainbow Universe.ttf",80);
  textFont(fancy);
  
  grass = loadImage("grass.jpeg");
  selected = grass;
  command = loadImage("command.jpeg");
  diamond = loadImage("diamond.jpeg");
  
  x=width/2;
  y=height/2;
  d=100;
  //moving
  vx = random(-1,1);
  vy = random(-1,1);
  
  score = 0;
  lives = 3;

  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
}

void draw()
{
  if(mode == INTRO)
  {
    intro();
  }
  else if(mode == GAME)
  {
    game();
  }
  else if(mode == PAUSE)
  {
    pause();
  }
  else if(mode == GAMEOVER)
  {
    gameover();
  }
  else if(mode == OPTION)
  {
     option(); 
  }
  else
  {
    println("Error: Mode =" + mode);
  }
}

void tactile(int x,int y,int l,int w)
{
  if(mouseX>x && mouseX<x+l && mouseY>y &&  mouseY<y+w)
  {
    stroke(255,255,0);
  }
  else
    stroke(0);
}
