class Star //note that this class does NOT extend Floater
{
private int starColorR,starColorG,starColorB,starSize,starX,starY;
public Star(){
starColorR = (int)(Math.random()*255);
starColorG = (int)(Math.random()*255);
starColorB = (int)(Math.random()*255);
starSize = (int)(Math.random()*7);
starX = (int)(Math.random()*800);
starY = (int)(Math.random()*800);
  }  
  public void show(){
  fill(starColorR,starColorG,starColorB);
  ellipse(starX,starY,starSize,starSize);
  }
}
