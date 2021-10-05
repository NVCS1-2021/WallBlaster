Laser[] lasers = new Laser[30000];
int lasersFired = 0;
Wall wall;

public void setup() {
  size(400,800);
  wall = new Wall();
}

public void draw() {
  background(220);
  if (mousePressed) fireLaser();
  wall.show();
  for (int i = 0; i < lasers.length; i++) {
    if (lasers[i] != null && lasers[i].active) {
      lasers[i].show();
      lasers[i].move();
      for (int j = 0; j < wall.pieces.length; j++) {
        WallPiece oneWP = wall.pieces[j];
        if (oneWP.active)
          lasers[i].collides(oneWP);
      }
    }
  }
}

public void fireLaser() {
  Laser laser = new Laser(new PVector(mouseX,mouseY));
  lasers[lasersFired] = laser;
  lasersFired++;
}
