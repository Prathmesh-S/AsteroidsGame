//your variable declarations here
Spaceship Bob = new Spaceship();
Star [] nightSky = new Star[100];
public void setup() 
{
  background(0);
  size(500,500);
  for (int i = 0; i<nightSky.length; i++) {
    nightSky[i] = new Star();  
  }
}
public void draw() 
{
  background(0);
  Bob.move();
  Bob.show();
   for (int i = 0; i<nightSky.length; i++) {
    nightSky[i].show();  
  }
}

public void keyPressed(){
  if (key =='d') {
      Bob.turn(10);
  }
    if (key =='a') {
       Bob.turn(-10);
  }
    if (key =='w') {
      Bob.accelerate(0.25); // Why is this not constant! It is slow to react
  }
    if (key =='s') {
  }
  
    if (key =='f') {
      Bob.hyperSpace();
  }
}
