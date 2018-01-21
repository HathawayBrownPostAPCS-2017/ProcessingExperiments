public int centerX = 200, centerY = 200, radius = 40;

void setup() {
  size(400, 400);
  background(30, 10, 255);
  ellipse (centerX - (0.5 * radius), centerY - (0.5 * radius), (2 * radius), (2 * radius));
}

// Please move with the arrow keys.
// The circle will continue to move until another key is pressed.
void draw() {
  background(30, 10, 255);
  if (key == CODED) { 
    if (keyCode == UP) {
      centerY -=5;
    } else if (keyCode == DOWN) {
      centerY += 5;
    } else if (keyCode == LEFT) {
      centerX -= 5;
    }  else if (keyCode == RIGHT) {
      centerX += 5;
    }       
  }
  else  { }    // if anything else is pressed, stop moving
  
  println ("centerX: " + centerX + "   centerY = " + centerY);
  ellipse (centerX - (0.5 * radius), centerY - (0.5 * radius), (2 * radius), (2 * radius));

}