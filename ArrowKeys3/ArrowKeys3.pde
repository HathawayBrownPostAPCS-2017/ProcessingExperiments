// This version only moves when a key is actively being pressed

public int centerX = 200, centerY = 200, radius = 40;
public int maxWindow = 400;

void setup() {
  size(400, 400);
  background(30, 10, 255);
  ellipse (centerX, centerY, (2 * radius), (2 * radius));
}

// Moves a circle with the arrow keys.
// The circle will move only while a key is pressed.
void draw() {
  background(30, 10, 255);
  if (keyPressed)
  {
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
    else  { }    // if anything else is pressed, do nothing
  }              // end if (keyPressed)
  
  println ("centerX: " + centerX + "   centerY = " + centerY);
  if (onBorder())
  { 
     fill (255, 0, 0);   //  make it red and stop moving, slight bounce back
     getBack();
  }
  else  
  {  
    fill (255);          // make it white
  } 
  ellipse (centerX, centerY, (2 * radius), (2 * radius));
}

public boolean onBorder ()
{
  return ((centerX - radius < 0) || (centerX + radius > maxWindow) ||
          (centerY - radius < 0) || (centerY + radius > maxWindow));
}

public void getBack ()
{
  if (centerX - radius < 0) 
    {  centerX += 5;  }
  if (centerX + radius > maxWindow) 
    {  centerX -= 5;  }
  if (centerY - radius < 0) 
    {  centerY += 5;  }
  if (centerY + radius > maxWindow)
    {  centerY -= 5;  }
}