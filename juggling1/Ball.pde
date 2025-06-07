class Ball{
  private int xSpeed;
  private int ySpeed;
  private int x;
  private int y;
  
  public Ball(int x, int y){
    this.xSpeed = (int) random(0,10);
    this.ySpeed = 7;
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
  
  public void wallHit(){
    if(this.x > 800){
      xSpeed = -xSpeed;
    }
    if(this.x < 0){
      xSpeed = -xSpeed;
    }
    if(this.y > 0){
      ySpeed = - ySpeed;
    }
    if(this.y < 800){
      ySpeed = -ySpeed;
    }
  }
  
  public void collide(){
    if(abs(this.x - player1.x) < 40 && abs(this.y - player1.y) < 40){
      this.xSpeed = -xSpeed;
      this.ySpeed = -ySpeed;
    }
  }
}
