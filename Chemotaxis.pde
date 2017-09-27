Bacteria[] many;
 void setup()   
 {     
  size(500, 500);
  many = new Bacteria[100];
  for (int i = 0; i < many.length; i++)
  {
    many[i] = new Bacteria();
  }  
 }   
 void draw()   
{
  background(0);
  for (int i = 0; i < many.length; i++)
  {
    many [i].move();
    many [i].show();
  }
}
 class Bacteria    
 {     
    int myX, myY;
  Bacteria()
  {
    myX = myY= 250;
  }
  void move()
  {

    if (mousePressed==true)
    {
       if (mouseX <myX)
    myX = myX +(int)(Math.random()*7)-2;//right
    else
      myX= myX+(int)(Math.random()*7)-4;//left
       if (mouseY <myY)
    myY = myY +(int)(Math.random()*7)-2;//up
    else
      myY= myY+(int)(Math.random()*7)-4;//down
    }
        
        
        if (mousePressed==false)
    {
     if (mouseX <myX)
    myX = myX +(int)(Math.random()*7)-4;//left
    else
      myX= myX+(int)(Math.random()*7)-2;//right
       if (mouseY <myY)
    myY = myY +(int)(Math.random()*7)-4;//down
    else
      myY= myY+(int)(Math.random()*7)-2;//up
    }
        
    if (myX<0)
      myX=0;
    if(myX>500)
      myX=500;
     if (myY<0)
      myY=0;
    if(myY>500)
      myY=500;
  }
  
  void show()
  {
    fill(random(255), random(255), random(255));
    ellipse(myX, myY, 30, 30);
  } 
 }   