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

void setup() {
  size(700, 900);
}


void draw() {
  background(0, 51, 102);
  bricks();
  fill(255, 255, 255);
  rect(xrect, yrect, w, h, r);
  fill((int)(Math.random()*250)+6, (int)(Math.random()*250)+6, (int)(Math.random()*250)+6);
  rect(xBall, yBall, 15, 15);
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
   
}


void keyPressed() { 
  if (key == CODED) {
    if (keyCode==LEFT) {
      xrect = xrect - 40;
    } else if (keyCode==RIGHT) {
      xrect = xrect + 40;
    }
  }
}

void bricks() {
  //int count = 0;
  int y = 350;
  //int a = (int)(Math.random()*255);
  //int b = (int)(Math.random()*255);
  //int c = (int)(Math.random()*255);
  for ( int j=150; j<y; j+=45) {
    int count = 40;
    for ( int i = 0; i<10; i++) {
      int [] brick = new int [15];
      brick[i]=count;
      fill((int)(Math.random() * 255), 255, 255);
      //fill(a, b, c);
      rect(brick[i], j, 45, 20);
      count +=65;
    }
  }
  //if(
}
void ballTop() {
}
