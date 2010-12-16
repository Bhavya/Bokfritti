import ddf.minim.*;

//audio
Minim minim;
AudioInput in;
int sensitivity = 8; 

//visual
float x = 100;
float y = 100;
float angle1 = 0.0;
float segLength = 50;
int fadeOut = 2;

void setup() {  
  size(800, 600);
  background(0); 
  smooth(); 
  strokeWeight(20.0);
  stroke(0, 50); 
  
  minim = new Minim(this);
  minim.debugOn();
 
  // get a line in from Minim, default bit depth is 16
  in = minim.getLineIn(Minim.STEREO, 512);
}

void draw() {
  //fade
  fill(0, 0, 0, fadeOut);
  noStroke();
  rect( 0, 0, width, height);
  
  //light trail
  float dx = mouseX - x;
  float dy = mouseY - y;
  fill(random(255),mouseY/2,mouseX/2);
  stroke(random(255),mouseY/2,mouseX/2, 50); 
  angle1 = atan2(dy, dx);  
  x = mouseX - (cos(angle1) * segLength);
  y = mouseY - (sin(angle1) * segLength); 
  ellipse(x, y, 10, 10);
  
  // left-click for bright spot
  if( mousePressed && ( mouseButton == LEFT ) ){
      fill(255);
     ellipse(x, y, 20, 20);
  }
  
  // right-click for sound input
  if( (mousePressed && ( mouseButton == RIGHT )) && (in.left.get(in.bufferSize()-1)*500 > sensitivity) ){
    //background(0);
     //fill(255);
     ellipse(random(800), random(600), 20, 20);
  }
}


void stop()
{
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop(); 
  super.stop();
}

