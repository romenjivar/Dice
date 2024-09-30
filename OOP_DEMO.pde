class Balloon{
  //balloons have these things
  //aka member variables
  int mySize, myX, myY;
  
  //constructor (function)
  //it's job is to initialize the member variables
  Balloon(int x, int y){
    mySize = 0;
    myX = x;
    myY = y;
  }
  
  //Balloons have the following
  //BEHAVIORS (functions)
  void inflate(){
   mySize = mySize += 1; 
  }
  
  void show(){
    fill(255,0,0);
    ellipse(myX, myY, mySize, mySize);
  }
}
// end of Balloon

Balloon bob;
Balloon sue;

void setup(){
 size(300,300); 
 bob = new Balloon(150,150);
 sue = new Balloon(250,150);
}

void draw(){
  System.out.println(bob.myX);
  bob.inflate();
  bob.show();
  sue.inflate();
  sue.show();
}
