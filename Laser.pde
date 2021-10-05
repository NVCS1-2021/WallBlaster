public class Laser {
  private PVector pos, vel, gravity, size;
  private color c;
  private boolean active = true;
  
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
  
  public void collides(WallPiece wp) {
    //if laser and wp overlap
    if (this.pos.x >= wp.pos.x 
      && this.pos.y >= wp.pos.y
      && this.pos.y <= wp.pos.y + wp.SIZE) {
      //then wp gets damaged
      wp.hp--;
      //if wp has no health, destroy wp
      if (wp.hp == 0)
        wp.active = false;
      //laser gets destroyed
      active = false;
    }
  }
}
