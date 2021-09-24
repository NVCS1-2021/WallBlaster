Laser[] lasers = new Laser[300];

public void setup() {
  size(400,800); 
}

public void draw() {
  background(220);
  for (int i = 0; i < 20; i++) {
    
  }
}

public void mouseReleased() {
  Laser laser = new Laser(new PVector(mouseX,mouseY));
  lasers[0] = laser;
}
