public class Laser {
  private PVector pos, vel, gravity, size;
  private color c;
  
  public Laser(PVector pos) {
    this.pos = pos;
    vel = new PVector(10,0);
    gravity = new PVector(0,0.1);
    size = new PVector(10,4);
    c = color(255,0,0);
  }
  
  public void show() {
    fill(c);
    rect(pos.x,pos.y,size.x,size.y);
  }
  
  public void move() {
    vel.add(gravity);
    pos.add(vel);
  }
}
