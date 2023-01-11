
class Point {
  float x, y;
  public Point(float x, float y) {
    this.x = x;
    this.y = y;
  }
  public void draw() {
    plotRadius = 25;
    plot(x, y, color(255, 0, 0));
  }
  public String toString() {
    return x+","+y;
  }
}

ArrayList<Point> data;

void drawLine(float m, float b) {
  plotRadius = 5;
  for (x = xMin; x < xMax; x+= 0.01) {
    y = m*x+b;
    plot(x, y, color(0, 0, 255));
  }
}

void drawPoints() {
  fill(255, 0, 0);
  plotRadius = 25;
  for (Point p : data)
    p.draw();
}

void drawBestFitLine() {
  int sigmaX = 0, sigmaXsquared = 0, n = data.size(), sigmaY = 0, sigmaXY = 0;
  if (n < 3)
    return;
  for (Point p : data) {
    sigmaX += p.x;
    sigmaXsquared += p.x*p.x;
    sigmaY += p.y;
    sigmaXY += p.x*p.y;
  }
  float det = sigmaXsquared * n - sigmaX * sigmaX;
  float m = (n * sigmaXY - sigmaX * sigmaY) / det, b = (sigmaXsquared * sigmaY - sigmaX * sigmaXY) / det;
  drawLine(m, b);
}

void mousePressed() {
  data.add(new Point(mouseX(), mouseY()));
}
