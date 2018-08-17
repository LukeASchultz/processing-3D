class Cube {
  float relativeX;
  float relativeY;
  float relativeZ;
  float relativeSpeed;

  Cube(float cX, float cY, float cZ, float cS) {
    relativeX = cX;
    relativeY = cY;
    relativeZ = cZ;
    relativeSpeed = cS;
  }

  void checkMove() {
    if (keyPressed) {
      if (key == 'a') {
        relativeX -= relativeSpeed;
      }
      if (key == 'd') {
        relativeX += relativeSpeed;
      }
      if (key == 'w') {
        relativeY -= relativeSpeed;
      }
      if (key == 's') {
        relativeY += relativeSpeed;
      }
      if (key == 'z') {
        relativeZ += relativeSpeed;
      }
      if (key == 'x') {
        relativeZ -= relativeSpeed;
      }
    }
  }

  void showCube() {
    pushMatrix();
    translate(width/2 + relativeX, height/2 + relativeY, relativeZ);
    fill(255);
    stroke(0);
    box(75);
    popMatrix();
  }
}
