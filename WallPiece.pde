public class WallPiece {
  private PVector pos;
  private final int SIZE = 10;
  private int hp = 3;
  private color c;
  
  public WallPiece(int x, int y) {
    pos = new PVector(x,y);
    c = color(10,20,30);
  }
}
