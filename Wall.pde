public class Wall {
  private PVector pos, size;
  public WallPiece[] pieces;
  
  public Wall() {
    size = new PVector(150,height);
    pos = new PVector(width-size.x, 0);
    pieces = new WallPiece[(int)(size.x/10 * size.y/10)];
    int i = 0;
    for (int r = 0; r < size.y / 10; r++) {
      for (int c = 0; c < size.x / 10; c++) {
        pieces[i] = new WallPiece((int)(pos.x+c*10),r*10);
        i++;
      }
    }
  }
  
  public void show() {
    for (int i = 0; i < pieces.length; i++) {
      pieces[i].show();
    }
  }
}
