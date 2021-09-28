Laser[] lasers = new Laser[300];
int lasersFired = 0;
Wall wall;

public void setup() {
  size(400,800);
  wall = new Wall();
}

public void draw() {
  background(220);
  wall.show();
  for (int i = 0; i < lasers.length; i++) {
    if (lasers[i] != null) {
      lasers[i].show();
      lasers[i].move();
    }
  }
}

public void mouseReleased() {
  Laser laser = new Laser(new PVector(mouseX,mouseY));
  lasers[lasersFired] = laser;
  lasersFired++;
}
