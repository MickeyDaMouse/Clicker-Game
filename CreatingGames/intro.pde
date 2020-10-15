void intro()
{
  theme.play();
  
  strokeWeight(5);
  
  background(0,255,0);
  fill(255);
  textSize(150);
  text("BLOCK CLICKER",400,350);
  
  fill(255);
  tactile(100,500,200,100);
  rect(100,500,200,100);
  textSize(70);
  fill(0);
  text("START",200,550);
  
  fill(255);
  tactile(450,500,250,100);
  rect(450,500,250,100);
  textSize(70);
  fill(0);
  text("OPTIONS",575,550);
}

void introClick()
{
  if(mouseX>100 && mouseX<300 && mouseY>500 && mouseY<600)
    mode = GAME;
    
  if(mouseX>450 && mouseX<700 && mouseY>500 && mouseY<600)
    mode = OPTION;
}
