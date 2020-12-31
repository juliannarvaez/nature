public class Particle {
  
  PVector vel;
  PVector pos;
  float speed;
  int radius;
  
  Particle(int x, int y) {
    vel = new PVector(0, 0);
    pos = new PVector(x, y);
    radius = (int) random(3,9);
  }
  
  void move() {
    vel.x=random(-1,1)+radius*sin(pos.x);
    vel.y=random(-5,-2);
    pos.add(vel);
  }
  
  void checkEdge(){
    if(pos.x > width-radius-5) {
      pos.x=random(width);
    }
    else if(pos.x < 0+radius+5) {
      pos.x=random(width);
    }
    else if(pos.y > height-radius-5) {
      pos.y=random(height); 
    }
    else if(pos.y < 0+radius+5){
      pos.y=random(height);  
    }
  }
  
  void display(){
    color c = img.get((int) pos.x, (int) pos.y);
    stroke(c);
    fill(c);
    ellipse(pos.x, pos.y, radius, radius);
    radius= (int) (pos.y/(height+500)*20);
  }
  
}
