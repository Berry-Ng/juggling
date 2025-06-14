int score = 0;

ArrayList<Ball> bList = new ArrayList<Ball>();


Player player1 = new Player(400,785);

boolean a,d;

void setup(){
  size(800,800);
  bList.add(new Ball(400,400));

}

void draw(){
  background(0);
  text(score,10,10);
  for(int i=0;i<bList.size();i++){
    bList.get(i).draw(50);
  }
  player1.draw(150,30);
  keyReleased();
  for(int i=0;i<bList.size();i++){
    bList.get(i).move();
  }
  player1.move();
  
  for(int i=0;i<bList.size();i++){
    bList.get(i).wallHit();
    bList.get(i).collide();
  }
  
  newBall();

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

void newBall(){
  if(score % 10 == 0 && score != 0){
    bList.add(new Ball(400,400));
  }
}
  
