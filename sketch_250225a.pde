//Pallette
color darkPurple = #230F2B;
color pink = #F21D41;
color lightGreen = #EBE3C5;
color medGreen = #BCE3C5;
color darkGreen = #82B3AE;

float sliderX;
float thing;
int change;

void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderX = 200;
  change = 0;
}

void draw() {
  background(thing); 
  
  if(change == 1 && mouseX > 100 && mouseX < 700) {
    sliderX = mouseX;
  }
  
  thing = map(sliderX, 100,700, 0,255);
  
  stroke(255);
  line(100,300, 700,300);
  stroke(pink);
  line(100,300, sliderX,300);
  circle(sliderX, 300, 50);
}


void mousePressed() {
  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
    change = 1;
  }
}

void mouseReleased() {
  change = 0;
}
