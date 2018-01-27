color pix[][] = new color[20][20];
color curColor = color(255,0,0);

void setup(){
  size(400,400);
}

void draw() {
  
  for(int y=0; y<20; y++) {
    for(int x=0; x<20; x++) {
      fill(pix[x][y]);
      rect(20*x,20*y,20,20);
    }
  }
}

void setColor(color newColor) {
  curColor = newColor;
}

void mousePressed() {
  pix[mouseX/20][mouseY/20] = curColor;
}

void mouseDragged() {
  pix[mouseX/20][mouseY/20] = curColor;
}