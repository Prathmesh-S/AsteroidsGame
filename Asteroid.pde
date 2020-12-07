class Asteroid extends Floater {
private int speedOfRotation;
public Asteroid(){
  speedOfRotation = (int)(Math.random()*7)-3;
  corners = 7;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] =24 ;
  yCorners[0] = 0;
  xCorners[1] = 12;
  yCorners[1] = 15;
  xCorners[2] = 0;
  yCorners[2] = 15;
  xCorners[3] = -12;
  yCorners[3] = 15;
  xCorners[4] = -24;
  yCorners[4] = 0;
  xCorners[5] = -12;
  yCorners[5] = -15;
  xCorners[6] = 12;
  yCorners[6] = -15;
  myColor =255;
  myCenterX = (int)(Math.random()*800);
  myCenterY = (int)(Math.random()*800);
  myXspeed =(Math.random()*4)-1.5;
  myYspeed =(Math.random()*4)-1.5;
  myPointDirection = (int)Math.random()*360;;
  }
  public void move(){ 
    turn(speedOfRotation);
       super.move();
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
