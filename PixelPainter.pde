color pix[][] = new color[20][20];
color curColor;

void setup(){
  size(420,400);
  colorMode(HSB, 360, 100, 100);
  curColor = color(0,100,100);
  drawPalette();
}

void draw() {
  
  for(int y=0; y<20; y++) {
    for(int x=0; x<20; x++) {
      fill(pix[x][y]);
      rect(20*x,20*y,20,20);
    }
  }
}

void drawPalette() {
  for(int i=0; i<20; i++) {
    fill(18*i, 100, 100);
    rect(400,20*i,20,20);
  }
}

void setColor(color newColor) {
  curColor = newColor;
}

void mousePressed() {
  if(mouseX>=400){
    //pick color
    setColor(color(18*(mouseY/20), 100, 100));
  }
  else{
    pix[mouseX/20][mouseY/20] = curColor;
  }
}

void mouseDragged() {
  if(mouseX >= width-20 || mouseX < 0 || mouseY >= height || mouseY < 0) return;
  pix[mouseX/20][mouseY/20] = curColor;
}