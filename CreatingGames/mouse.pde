void mouseReleased()
{
    if(mode == INTRO)
  {
    introClick();
  }
  else if(mode == GAME)
  {
    gameClick();
  }
  else if(mode == PAUSE)
  {
    pauseClick();
  }
  else if(mode == GAMEOVER)
  {
    gameoverClick();
  }
  else if(mode==OPTION)
  {
     optionClick(); 
  }
  else
  {
    println("Error: Mode =" + mode);
  }
}
