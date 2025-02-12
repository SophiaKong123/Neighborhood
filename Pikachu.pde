class Pikachu {
  float x, y;     // Position of Pikachu
  float speed;    // Speed of movement
  
  // Default constructor
  Pikachu() {
    x = 0;
    y = height +300; // Position closer to the ground
    speed = 2;        // Default speed
  }
  
  // Constructor with parameters
  Pikachu(float startX, float startY, float spd) {
    x = startX;
    y = startY;
    speed = spd;
  }
  
  // Method to display Pikachu
  void display() {
    fill(#EEF20F);
    ellipseMode(CENTER);
    ellipse(x + 50, y +300, 230, 275);  //Body
    ellipse(x - 20, y + 400, 50, 25);    // Left Foot
    ellipse(x + 105, y + 400, 50, 25);    // Right Foot
    fill(1);
    ellipse(x +15, y + 220, 25, 25);     // Left Eye Black
    ellipse(x + 85, y +220, 25, 25);      // Right Eye Black
    stroke(255);
    fill(255);
    ellipse(x +20, y + 215, 5, 5);      // Left Eye White
    ellipse(x + 80, y +215, 5, 5);       // Right Eye White
    fill(1);
    stroke(1);
    triangle(x + 45, y + 265, x + 40, y +245, x + 50, y +245); // Nose
    fill(#FF6150);
    ellipse(x -25, y + 270, 40, 40);     // Left Cheek
    ellipse(x + 115, y + 270, 40, 40);      // Right Cheek
    noFill();
    stroke(1);
    strokeWeight(4);
    arc(x + 37, y + 265, 15, 15, 0, PI);  // Left Mouth
    arc(x + 53, y + 265, 15, 15, 0, PI);  // Right Mouth
    arc(x +8, y + 310, 40, 130, 0, PI); // Left Arm
    arc(x + 82, y + 310, 40, 130, 0, PI); // Right Arm
    stroke(1);
    fill(#EEF20F);
    arc(x + 85, y +135, 50, 160, PI - QUARTER_PI, PI + PI + QUARTER_PI, OPEN); // Right Ear
    arc(x +5, y + 135, 50, 160, PI - QUARTER_PI, PI + PI + QUARTER_PI, OPEN); // Left Ear
  }

  // Method to move Pikachu sideways
  void move() {
    x += speed;
    
    // Reverse direction if Pikachu hits screen edges
    if (x > width || x < 0) {
      speed = -speed;
    }
  }
}
