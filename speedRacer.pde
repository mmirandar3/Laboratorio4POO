class Spot {
  float x, y;
  // X-coordinate, y-coordinate
  float diameter;
  // Diameter of the circle around the square
  float speed;
  // Distance moved each frame
  int direction = 1;
  // Motion Direction(1 is down, -1 is up)

  Spot(float xpos, float ypos, float dia, float sp) {
    // Constructor
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }

  void move() {
    x += (speed * direction);
    
  }

  void display() {

    rect (x, y, diameter, diameter);
  }
}

  Spot sp1, sp2, sp3; // Declare the objects
//Many Spots
void setup() {
  size(350, 350);
  smooth();
  noStroke();
  sp1 = new Spot(0, 100, 20, 0.2); 
  sp2 = new Spot(0, 175, 20, 0.28); 
  sp3 = new Spot(0, 250, 20, 0.25); 
}

void draw() {
 
  background(#1A1313);
  fill(#B7ACAC);
  rect(0, 90, 350, 185);
  textSize(50);
  fill(#DB1107);
  text("SPEED",100,50);
  fill(#0311FF);
  text("RACER",100,325);  
  
  sp1.move();
  sp2.move();
  sp3.move();
  fill(#9C00DB);
  sp1.display();
  fill(#2E1FDB);
  sp2.display();
  fill(#FAE30D);
  sp3.display();
}
