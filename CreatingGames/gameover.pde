void gameover()
{
  background(0);
  textSize(100);
  text("GAME OVER",400,300);
  text("HIGHSCORE: " + highscore,400,500);
  
  theme.pause();
  gameover.play();
  
}

void gameoverClick()
{
  mode = INTRO;
  theme.rewind();
}
