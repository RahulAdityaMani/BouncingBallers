Ball horizBall;
Ball vertBall;
Ball diagBall;
Ball clickBall;

void setup(){
  size (500,500);
  horizBall = new Ball(color(255,0,0),50,10,10,0);
  vertBall = new Ball(color(0,255,0),50,10,0,12);
  diagBall = new Ball(color(0,0,255),300,20,5,5);
  clickBall = new Ball(color(255,255,0),60,200,7,7);
}

void draw(){
  background (0);
  horizBall.move();
  horizBall.display();
  vertBall.move();
  vertBall.display();
  diagBall.move();
  diagBall.display();
  clickBall.display(); 
  
  if(mousePressed == true){
    clickBall.move();
     
  }
}

class Ball{
    color c;
    int xpos;
    int ypos;
    int xspeed;
    int yspeed;
  
  Ball(color tempC, int tempXpos, int tempYpos, int tempXspeed, int tempYspeed){
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;  
  }
  
  void display(){
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos,ypos,10,10); 
  }
  
  void move(){
    xpos += xspeed;
    ypos += yspeed;
    //side collision
    if(xpos > width - 10){
      xspeed = -1 * xspeed;
    }  
    if(xpos < 10){
      xspeed = -1 * xspeed; 
    }
    // top and bottom collision
    if(ypos > height - 10){
      yspeed = -1 * yspeed;  
    }
    if(ypos < 10){
      yspeed = -1 * yspeed; 
    }  
  }
  
}
