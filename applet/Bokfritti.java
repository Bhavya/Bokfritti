import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class Bokfritti extends PApplet {

float x = 100;
float y = 100;
float angle1 = 0.0f;
float segLength = 50;

public void setup() {  
  size(800, 600);
  background(0); 
  smooth(); 
  strokeWeight(20.0f);
  stroke(0, 50); 
}

public void draw() {
  
  float dx = mouseX - x;
  float dy = mouseY - y;
  fill(random(255),mouseY/2,mouseX/2);
  stroke(random(255),mouseY/2,mouseX/2, 50); 
  angle1 = atan2(dy, dx);  
  x = mouseX - (cos(angle1) * segLength);
  y = mouseY - (sin(angle1) * segLength); 
  ellipse(x, y, 10, 10);
  
  if( mousePressed && ( mouseButton == LEFT ) ){
      fill(255);
     ellipse(x, y, 20, 20);
  }
  
   if( mousePressed && ( mouseButton == RIGHT ) ){
    background(0);
  }
}


  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#F0F0F0", "Bokfritti" });
  }
}
