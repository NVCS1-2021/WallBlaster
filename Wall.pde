public class Wall {
  private PVector size;
  private WallPiece[] pieces;
  
  public Wall() {
    size = new PVector(150,height);
    int i = 0;
    for (int r = 0; r < size.y / 10; r++) {
      for (int c = 0; c < size.x / 10; c++) {
        pieces[i] = new WallPiece(c*10,r*10);
        i++;
      }
    }
  }
  
  public void show() {
    for (int i = 0; i < 200; i++) {
      
    }
  }
}
