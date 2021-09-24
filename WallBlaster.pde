Laser[] lasers = new Laser[300];
int lasersFired = 0;

public void setup() {
  size(400,800); 
}

public void draw() {
  background(220);
  for (int i = 0; i < 20; i++) {
    if (lasers[i] != null) {
      lasers[i].show();
    }
  }
}

public void mouseReleased() {
  Laser laser = new Laser(new PVector(mouseX,mouseY));
  lasers[lasersFired] = laser;
  lasersFired++;
}
