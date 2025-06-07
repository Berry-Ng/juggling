class Player{
  private int xSpeed;
  private int x;
  private int y;
  
  public Player(int x,int y){
    this.xSpeed = 15;
    this.x = x;
    this.y = y;
  }
  
  void draw(int length,int width){
    rect(x-length/2,y-width/2,length,width);
    
  }
  
  public void move(){
    if(a == true){
      this.x -= this.xSpeed;
    }
    if(d == true){
      this.x += this.xSpeed;
    }
  }
}
