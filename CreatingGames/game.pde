void game()
{
  background(255,0,0);
  
  //lives & scores
  textSize(50);
  text("Score: " + score,width/2,15);
  text("Lives: " + lives,width/2,55);
  
  //pause button
  tactile(25,25,50,50);
  fill(255);
  rect(25,25,50,50);
  fill(0);
  stroke(0);
  line(45,40,45,60);
  line(55,40,55,60);
  

  //target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x,y,d);
  image(selected,x-d/3,y-d/3,d/1.5,d/1.5);
  
  //target  movements
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if(x<d/2||x>width-d/2)
    vx=vx*-1;
  if(y<d/2||y>height-d/2)
    vy=vy*-1;
}

void gameClick()
{
  if(dist(mouseX,mouseY,x,y)<d/2)
  {
    score++;
    coin.rewind();
    coin.play();
    vx *= 1.1;
    vy *= 1.1;
  }
  else if(mouseX>25 &&  mouseX<75 && mouseY>25 &&  mouseY<75)
  {
    mode = PAUSE;
  }
  else
  {
    lives--;
    bump.rewind();
    bump.play();
  }
    
  if(lives == 0)
  {
    if(score>highscore)
      highscore = score;
    score = 0;
    lives = 3;
    vx = random(-1,1);
    vy = random(-1,1);
    x=width/2;
    y=height/2;
    mode = GAMEOVER;
    gameover.rewind();
  }
}
