float xrect = 350;
float yrect = 800;
float w = 70;
float h = 15;
float r = 7;
float dX = random(5, 6);
float dY = random(2, 3);
float xBall = 350;
float yBall = 450;
float ballTop;
float ballRight;
float ballLeft;
float padX1;
float padX2;
int brick[];
int x=10;
int y=150;
int wi = 45;
int hi = 20;
int count=0;
ArrayList<Brick> myBricks=new ArrayList<Brick>();
boolean left = false, right=false;

void setup() {
  size(700, 900);

  for (int i=0; i<50; i++) {
    myBricks.add(new Brick(x, y, wi, hi));
    x+=70;
    if (x>650) {
      x=10;
      y+=40;
    }
  }
}


void draw() {
  
  background(0, 51, 102);
  //bricks();
  for (int i=0; i<myBricks.size(); i++) {
    myBricks.get(i).display();
  }
  fill(255, 255, 255);
  rect(xrect, yrect, w, h, r);
  egg();
  
  fill((int)(Math.random()*250)+6, (int)(Math.random()*250)+6, (int)(Math.random()*250)+6);
  rect(xBall, yBall, 12, 12);
  xBall = xBall + dX;
  yBall = yBall + dY;
  if (xBall>=690) {
    dX = dX * -1;
  }
  if (xBall<=2) {
    dX = dX * -1;
  }
  if (xBall <= xrect+w && xBall > xrect && yBall >= yrect-15 && yBall <= yrect+5) {
    dY = dY * -1;
  }
  if (yBall<=2) {
    dY = dY * -1;
  }
  if (yBall>=900) {
    dX=0;
    dY=0;
    textSize(40);
    fill(255, 255, 255);
    text("GAME OVER", 250, 400);
  }
  for(int i = 0; i<myBricks.size(); i++){
     
    if(xBall <= (myBricks.get(i).getBrickX()+wi) && xBall>(myBricks.get(i).getBrickX()) && yBall<=(myBricks.get(i).getBrickY()+hi) && yBall>=(myBricks.get(i).getBrickY())){
       println(count+=1);
      dX = dX * -1;
      dY = dY * -1;
      myBricks.remove(i);
      
    }
  }
  if(myBricks.size()==0){
    dX=0;
    dY=0;
    textSize(40);
    fill(255, 255, 255);
    text("You Win!!", 250, 400);
  }
  
}


void keyPressed() { 
  if (key == CODED) {
    if (keyCode==LEFT) {
      left=true;
    } else if (keyCode==RIGHT) {
      right=true;
    }
  }
}

void egg(){
  if(left==true){
    xrect = xrect - 7;
  }
  if(right==true){
    xrect = xrect + 7;
  }
}

void keyReleased(){
  if (key == CODED) {
    if (keyCode==LEFT) {
      left=false;
    } else if (keyCode==RIGHT) {
      right=false;
    }
  }
}
//void bricks() {
  //int count = 0;
  //int y = 350;
  //int a = (int)(Math.random()*255);
  //int b = (int)(Math.random()*255);
  //int c = (int)(Math.random()*255);
  //for ( int j=150; j<y; j+=45) {
    //int count = 40;
    //for ( int i = 0; i<10; i++) {
      //int [] brick = new int [15];
      //brick[i]=count;
      //fill((int)(Math.random() * 255), 255, 255);
      //fill(a, b, c);
      //rect(brick[i], j, 45, 20);
      //count +=65;
    //}
  //}
  //if(
//}
