  /**
   *  A rough implementation of a slider to return an integer value
   *  between a set minimum and maximum.
   *
   *  @author Michael Buescher for Hathaway Brown Post-AP CS
   *  @version 2018-01
   */
   
public class Slider {

  private int sliderValue;
  private int left, top, min, max, hght;
  
  /** @return the value of the Slider  */
  public int getValue ()
  {
     return sliderValue;
  }
  
  /**
   *  Constructs a new slider
   *
   * @param l the coordinate of the left hand side of the Slider
   * @param t the coordinate of the top side of the Slider
   * @param mn  the minimum value of the Slider
   * @param mx  the maximum value of the Slider
   */
  public Slider (int l, int t, int mn, int mx)
  {
    left = l;
    top = t;
    min = mn;
    max = mx;
    hght = 10;
    sliderValue = 72;
    
    stroke(0);
    fill(210);
    rect (left, top, (max - min), hght);
    fill(52);
    rect (left + sliderValue - (0.5 * hght), top, hght, hght);
  }
  
  /**
   *  display() shows the Slider in gray with the value in a dark gray box.
   *
   *  If the mouse is pressed inside the Slider, the value of the Slider is updated.
   *  If the mouse is pressed somewhere else, nothing changes.
   */
  public void display ()
  {
    stroke(0);
    fill(210);
    rect (left, top, (max - min), hght);     // draw the slider box
    if (mousePressed) 
    {  
      if ((mouseX >= left) && (mouseX <= left + max - min) &&
          (mouseY >= top)  && (mouseY <= top + hght))
      {
        sliderValue = mouseX - left;
        println (sliderValue);               // print out value.  Used for testing.
      }
    }   
    fill(80);                                // Show the current value of the Slider
    rect (left + sliderValue - (0.5 * hght), top, hght, hght);

  }

}