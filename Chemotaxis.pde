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
    myX = myX +(int)(Math.random()*5)-1;//right
    else
      myX= myX+(int)(Math.random()*5)-3;//left
       if (mouseY <myY)
    myY = myY +(int)(Math.random()*5)-1;//up
    else
      myY= myY+(int)(Math.random()*5)-3;//down
    }
        
        
        if (mousePressed==false)
    {
     if (mouseX <myX)
    myX = myX +(int)(Math.random()*5)-3;//left
    else
      myX= myX+(int)(Math.random()*5)-1;//right
       if (mouseY <myY)
    myY = myY +(int)(Math.random()*5)-3;//down
    else
      myY= myY+(int)(Math.random()*5)-1;//up
    }
        
    if (myX<0)
      myX=0;
    if(myX>500)
      myX=500;
     if (myY<0)
      myX=0;
    if(myY>500)
      myX=500;
  }
  
  void show()
  {
    fill(random(255), random(255), random(255));
    ellipse(myX, myY, 30, 30);
  } 
 }    