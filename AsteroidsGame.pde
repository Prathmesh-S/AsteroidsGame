//your variable declarations here
Spaceship Bob = new Spaceship();
Star [] nightSky = new Star[250];
ArrayList <Bullet> Missiles = new ArrayList <Bullet>();
ArrayList<Asteroid> HailStorm = new ArrayList <Asteroid>();
public void setup() 
{

  size(800,800);
    background(0);
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
    if (dist(Bob.getMyX(),Bob.getMyY(),HailStorm.get(i).getAsteroidX(),HailStorm.get(i).getAsteroidY())<15) {
    HailStorm.remove(i);
    } else {
    HailStorm.get(i).move();
    HailStorm.get(i).show();
    }
  }
  
  for (int i = 0; i<Missiles.size();i++) {
    for (int k = 0; k<HailStorm.size();k++){
    if (dist(Missiles.get(i).getBulletX(),Missiles.get(i).getBulletY(),HailStorm.get(k).getAsteroidX(),HailStorm.get(k).getAsteroidY())<40) {
    HailStorm.remove(k);
    Missiles.remove(i);
    break;
    } else {
      Missiles.get(i).show();
      Missiles.get(i).move(); 
      }
    }
  }
  if (HailStorm.size()==0) {
     for (int i = 0; i<15; i++){
    HailStorm.add(new Asteroid());
  }
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
  if (key==' ') {
    Missiles.add(new Bullet(Bob));
  }
}
