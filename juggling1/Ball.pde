class Ball{
  private int xSpeed;
  private int ySpeed;
  private int x;
  private int y;
  
  public Ball(int x, int y){
    this.xSpeed = 0;
    this.ySpeed = 10;
    this.x = x;
    this.y = y;
  }
  
  public void draw(int radius){
    circle(x,y, radius);
  }
  
  public void move(){
    this.x += xSpeed;
    this.y += ySpeed;
  }
}
