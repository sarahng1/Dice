Die bob;
int dieTotal = 0;
void setup () {
  size (500,500); 
  textAlign(CENTER);
  noLoop();
}

void draw() {
  for (int y = 0; y <= 350; y += 100) {
    for (int x = 0; x <= 400; x += 100) {
  bob = new Die(x,y);
  bob.roll();
  bob.show();
  if (bob.rolled==1) {
        dieTotal = dieTotal+1;
      }
      if (bob.rolled==2) {
        dieTotal = dieTotal+2;
      }
      if (bob.rolled==3) {
        dieTotal = dieTotal+3;
      }
      if (bob.rolled==4) {
        dieTotal = dieTotal +4;
      }
      if (bob.rolled==5) {
        dieTotal = dieTotal +5;
      }
      if (bob.rolled==6) {
        dieTotal = dieTotal+6;
      }
       }
  }
 System.out.println(dieTotal);
 noStroke();
 fill (50,168,82);
 rect(0,400,500,50);
     fill(0,0,0);
     textSize(20);
     text("Total = "+ dieTotal,250,425);
     dieTotal = 0;

  
} 
class Die {
  int rolled, mySize, myX, myY;
  
  Die(int x, int y) {
    myX = x;
    myY = y;
    mySize = 100;
}

void roll() {
  rolled = (int)(Math.random()*6)+1;
  System.out.println(rolled);
}

void show() {
  stroke (0);
  fill (241,242,233);
  rect (myX, myY, 100, 100);
  if (rolled == 1) {
    fill (235,182,242);
    ellipse (myX + 50, myY + 50,15,15);
  } 
  else if (rolled == 2){
    fill (206,244,245);
    ellipse (myX + 80, myY + 20,15,15);
    ellipse (myX + 20, myY + 80 ,15,15);
  }
  else if (rolled == 3) {
   fill (140,252,3);
    ellipse (myX + 80,myY + 20,15,15);
    ellipse (myX + 50, myY + 50,15,15);
   ellipse (myX + 20,myY + 80,15,15);
  }
  else if (rolled == 4) {
   fill (86,3,252);
    ellipse (myX + 80,myY+20,15,15);
    ellipse (myX + 80,myY + 80,15,15);
   ellipse (myX + 20 ,myY + 20,15,15);
   ellipse (myX + 20,myY + 80,15,15);
  } 
  else if (rolled == 5) {
   fill (219,252,3);
    ellipse (myX + 80,myY+20,15,15);
   ellipse (myX + 80,myY + 80,15,15);
   ellipse (myX + 20,myY + 20,15,15);
  ellipse (myX + 20,myY + 80,15,15);
  ellipse (myX + 50,myY + 50,15,15);
  }
  else {
   fill (3,252,161);
   ellipse (myX + 80,myY + 20,15,15);
   ellipse (myX + 80,myY + 80,15,15);
  ellipse (myX + 20,myY + 20,15,15);
   ellipse (myX + 20,myY + 80,15,15);
   ellipse (myX + 80,myY + 50,15,15);
   ellipse (myX + 20,myY +50,15,15);
  }
}
  }



void mousePressed () {
  redraw();
}
