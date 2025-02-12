/*
Sophia Kong
Neighborhood - Nightmare
*/
Door door1;
Door door2;
Door door3;
Door door4;
Door door5;

Window window1;
Window window2;
Window window3;
Window window4;
Window window5;

Roof roof1;
Roof roof2;
Roof roof3;
Roof roof4;
Roof roof5;

House house1;
House house2;
House house3;
House house4;
House house5;

Pikachu pika;

void setup() {
  size(1500, 900);
  background(0);
  smooth();

  // Pikachu
  pika = new Pikachu(0, height / 2, 5);  // Start at 0, middle of the screen, speed 5

  // House
  door1 = new Door(40, 80, #E03D3D);
  window1 = new Window(100, 100, false, Window.QUAD, #E03D3D);
  roof1 = new Roof(Roof.GAMBREL, #E03D3D);
  house1 = new House(300, 300, door1, window1, roof1, House.MIDDLE_DOOR, #6CA7F2);

  door2 = new Door(40, 100, #76D7C4);
  window2 = new Window(50, 50, false, Window.DOUBLE, #76D7C4);
  roof2 = new Roof(Roof.NOTHING, #76D7C4);  
  house2 = new House(200, 500, door2, window2, roof2, House.LEFT_DOOR,#F26C87);

  door3 = new Door(40, 100, #F39C12);
  window3 = new Window(40, 40, false, Window.QUAD, #F39C12);
  roof3 = new Roof(Roof.CATHEDRAL, #F39C12);  
  house3 = new House(200, 600, door3, window3, roof3, House.RIGHT_DOOR, #C1D183);

  door4 = new Door(40, 100, #F782EA);
  window4 = new Window(100, 100, false, Window.QUAD, #F782EA);
  roof4 = new Roof(Roof.DOME, #F782EA);  
  house4 = new House(600, 400, door4, window4, roof4, House.MIDDLE_DOOR, #83D195);

  door5 = new Door(40, 100, #8B39AF);
  window5 = new Window(40, 40, false, Window.QUAD, #8B39AF);
  roof5 = new Roof(Roof.CATHEDRAL,#8B39AF); 
  house5 = new House(200, 600, door5, window5, roof5, House.MIDDLE_DOOR, #F0B341);
}

void draw() {
  background(0);
  strokeWeight(4);
  // Draw the ground
  int groundHeight = 10;
  fill(0);
  rect(0, height +groundHeight, width, groundHeight);

  // Draw the houses
  house1.drawHouse(0, height - groundHeight - house1.h, true);
  house2.drawHouse(house1.x + house1.w, height - groundHeight - house2.h, false);
  house3.drawHouse(house2.x + house2.w, height - groundHeight - house3.h, false);
  house4.drawHouse(house3.x + house3.w, height - groundHeight - house4.h, false);
  house5.drawHouse(house4.x + house4.w, height - groundHeight - house5.h, false);

  //Move and display Pikachu
  pika.move();
  pika.display();
  
}
