//your variable declarations here
Spaceship Bob = new Spaceship();
Star [] nightSky = new Star[250];
 ArrayList<Asteroid> HailStorm = new ArrayList <Asteroid>();
public void setup() 
{
  background(0);
  size(800,800);
  for (int i = 0; i<nightSky.length; i++) {
    nightSky[i] = new Star(); 
  }
  for (int i = 0; i<15; i++){
    HailStorm.add(new Asteroid());
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
  for(int i = 0; i<HailStorm.size(); i++){
    if (dist(Bob.getMyX(),Bob.getMyY(),HailStorm.get(i).getAsteroidX(),HailStorm.get(i).getAsteroidY())<25) {
    HailStorm.remove(i);
    }
    HailStorm.get(i).move();
    HailStorm.get(i).show();
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
      Bob.accelerate(-0.25);
  }
  
    if (key =='f') {
      Bob.hyperSpace();
  }
}
//
