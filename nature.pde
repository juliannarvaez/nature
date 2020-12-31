int nums = 1600;
Particle[] particles_a = new Particle[nums];
PImage img;
PFont font;

void setup() {
  size(480,640);
  img = loadImage("Desktop/IMG_5682.jpg");
  img.resize(480,640);
  background(0);
  int count=0;
  for(int i=0; i<40; i++){
    for(int j=0; j<40; j++) {      
      particles_a[count] = new Particle(width/20*i-20,height/20*j-30);
      count++;
    }
  }
  font = createFont("HelveticaNeue-BoldItalic", 32);
  textFont(font);
  set(0, 0, img);  // fast way to draw an image
}

void draw() {
  for(int i=0; i<nums; i++) {
    particles_a[i].move();
    particles_a[i].display();
    particles_a[i].checkEdge();
  }  
  stroke(255);
  fill(255);
  textSize(32);
  //for(int i=0; i<10; i++) {
    text("Some kind of nature...", 50, 500+30); 
  //}
}
