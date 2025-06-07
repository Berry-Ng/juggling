Ball ball1 = new Ball(400,400);
Player player1 = new Player(400,785);

boolean a,d;

void setup(){
  size(800,800);

}

void draw(){
  background(0);
  ball1.draw(50);
  player1.draw(30,30);
  keyReleased();
  
  ball1.move();
  player1.move();
  
  ball1.wallHit();
  ball1.collide();
  
}

void keyPressed(){
  if(keyCode == 65){
    a = true;
  }
  if(keyCode == 68){
    d = true;
  }
  
}

void keyReleased(){
  if(keyCode == 65){
    a = false;
  }
  if(keyCode == 68){
    d = false;
  }
  
}
