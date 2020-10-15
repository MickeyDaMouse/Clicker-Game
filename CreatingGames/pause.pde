void pause()
{
  theme.pause();
  
  //pause button
  fill(255);
  tactile(25,25,50,50);
  rect(25,25,50,50);
  stroke(0);
  strokeWeight(5);
  triangle(45,35,45,65,60,50);
  strokeJoin(50);
  
  fill(0,0,255);
  textSize(90);
  text("GAME IS PAUSED",400,400);
}

void pauseClick()
{
  if(mouseX>25 &&  mouseX<75 && mouseY>25 &&  mouseY<75)
  {
    mode = GAME;
    theme.play();
  }
}
