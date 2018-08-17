Cube cube;

void setup() {
  size(640, 360, P3D);
  
  cube = new Cube(0.0, 0.0, 0.0, 5.0);
}

void draw() {
  background(255);
  
  cube.showCube();
  cube.checkMove();
}
