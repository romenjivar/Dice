void setup()
  {
    size(800,800);
      noLoop();
  }
  void draw()
  {
     background(200,200,200);
    count = 0;
    for(int y = 0; y < 700 ; y = y + 120){
      for(int x = 0; x < 700; x = x + 120){
      Die bob = new Die(50+x,20+y);
      bob.roll();
      bob.show();
      }
    } 
    fill(0);
    textSize(30);
    text("Total number of dots: " + count, 200,775);
  }
  void mousePressed()
  {
      redraw();
  }
  int count = 0;
  class Die //models one single dice cube
  {   
      int numDots, myX, myY;
      Die(int x, int y) //constructor
      {
          //numDots = (int)(Math.random()*6)+1;
          myX = x;
          myY = y;
      }
      void roll()
      {
          numDots = (int)(Math.random()*6)+1;
          count += numDots;
      }
      void show()
      {
          //your code here
          stroke(0);
          fill(255);
          if(numDots == 1){
            rect(myX, myY, 100, 100, 8);
            fill(255,0,0);
            ellipse(myX+50,myY+50,35,35);
            fill(0);
          }
          else if(numDots == 2){
           rect(myX, myY, 100, 100, 8);
           fill(0);
           ellipse(myX+25, myY+25, 20 ,20);
           ellipse(myX+75, myY +75,20,20);
          }
          else if(numDots == 3){
           rect(myX, myY, 100, 100, 8);
           fill(0);
           ellipse(myX+25, myY+25, 20 ,20);
           ellipse(myX+75, myY +75,20,20);
           ellipse(myX+50, myY+50, 20,20);
          }
          else if(numDots == 4){
           rect(myX, myY, 100, 100, 8);
           fill(0);
           ellipse(myX+25, myY+25, 20 ,20);
           ellipse(myX+25, myY+75, 20,20);
           ellipse(myX+75, myY +75,20,20);
           ellipse(myX+75, myY +25,20,20);
          }
          else if(numDots == 5){
            rect(myX, myY, 100, 100, 8);
           fill(0);
           ellipse(myX+25, myY+25, 20 ,20);
           ellipse(myX+25, myY+75, 20,20);
           ellipse(myX+75, myY +75,20,20);
           ellipse(myX+75, myY +25,20,20);
           ellipse(myX+50, myY+50, 20,20);
          }
          else{
           rect(myX, myY, 100, 100, 8);
           fill(0);
           ellipse(myX+25, myY+25, 20 ,20);
           ellipse(myX+25, myY+75, 20,20);
           ellipse(myX+75, myY +75,20,20);
           ellipse(myX+75, myY +25,20,20);
           ellipse(myX+25, myY+50, 20,20); 
           ellipse(myX+75, myY+50, 20,20); 
          }
        
      }
  }
