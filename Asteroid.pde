class Asteroid extends Floater {
public int speedOfRotation;
public Asteroid(){
  speedOfRotation = (int)(Math.random()*7)-3;
  corners = 5;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] =8 ;
  yCorners[0] = 0;
  xCorners[1] = -8;
  yCorners[1] = 0;
  xCorners[2] = 2;
  yCorners[2] = 3;
  xCorners[3] = -2;
  yCorners[3] = 3;
  xCorners[4] = 2;
  yCorners[4] = -3;
  xCorners[5] = -2;
  yCorners[5] = -3;
  myColor =255;
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myXspeed =(Math.random()*4)-1.5;
  myYspeed =(Math.random()*4)-1.5;
  myPointDirection = (int)Math.random()*360;;
  }
  public void move(){
    super.move(); 
    turn(speedOfRotation);
  }
  
  public void setAsteroidX(int x){
    myCenterX = x;
  }
   public void setAsteroidY(int Y){
    myCenterY = Y;
  }
  public int getAsteroidX() {
  return((int)myCenterX);
  }
  public int getAsteroidY() {
  return((int)myCenterY);
  }
}
