class Bullet extends Floater {
 public  Bullet(Spaceship Bob){
  myCenterX =  Bob.getMyX();
  myCenterY = Bob.getMyY();
  myXspeed =Bob.getMyXSpeed();
  myYspeed =Bob.getMyYSpeed();
  myPointDirection = Bob.getMyDirection() ;
  accelerate(7);
  }
  public void show() {
    fill(0,255,0);
  ellipse((float)myCenterX,(float)myCenterY,10,10);
  
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;     
    myCenterY += myYspeed; 
  }
  public int getBulletX() {
  return((int)myCenterX);
  }
  public int getBulletY() {
  return((int)myCenterY);
  }
} 
