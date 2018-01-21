// Tests the Slider class by making a Slider to control a color

  Slider mySlider;
  
  void setup()
  {
    size(400, 400);
    background (255, 255, 0);
    mySlider = new Slider(50, 350, 0, 255);
  }

  void draw()
  {
    mySlider.display();
    fill (255, 0, 0);
    rect(100, 100, 200, 200);
    fill (0, 0, mySlider.getValue());
    ellipse (100, 100, 180, 180);
  }