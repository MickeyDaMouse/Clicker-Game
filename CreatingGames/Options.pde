void option()
{
  background (0,255,0);
  textSize(70);
  
  text("OPTIONS",400,50);
  
  tactile(200,650,400,100);
  strokeWeight(5);
  fill(255);
  rect(200,650,400,100);
  fill(0);
  text("BACK",400,695);
  
  text("SIZE", 400,550);
  stroke(0);
  line (300,600,500,600);
  circle(sizex,600,30);
  d = map(sizex, 300,500,20,200);
  
  image(selected,x-d/3,y-d/3,d/1.5,d/1.5);
  image(grass,50,100,175,175);
  image(command,312,100,175,175);
  image(diamond,575,100,175,175);
}

void mouseDragged()
{
  if(mouseX>=300 && mouseX<=500 && mouseY>=585 &&  mouseY<= 615)
  {
    sizex = mouseX;
  }
}

void optionClick()
{
  if(mouseX>=300 && mouseX<=500 && mouseY>=585 &&  mouseY<= 615)
  {
    sizex = mouseX;
  }
  if(mouseX>200  && mouseX<600 && mouseY>650 && mouseY<750)
  {
    mode = INTRO;
  }
  if(mouseX>50 && mouseX<225 && mouseY>100 && mouseY<275)
  {
    selected = grass;
  }
  if(mouseX>312 && mouseX<487 && mouseY>100 && mouseY<275)
  {
    selected = command;
  }
  if(mouseX>575 && mouseX<750 && mouseY>100 && mouseY<275)
  {
    selected = diamond;
  }
}
