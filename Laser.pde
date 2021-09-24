public class Laser {
  private PVector pos, vel, gravity, size;
  private color c;
  
  public Laser(PVector pos) {
    this.pos = pos;
    vel = new PVector(1,0);
    gravity = new PVector(0,1);
    size = new PVector(10,4);
    c = color(255,0,0);
  }
}
