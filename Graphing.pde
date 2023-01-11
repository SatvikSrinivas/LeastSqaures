
float m = 1;

void setup() {
  fullScreen();
  //randomBounds();
  //defaultBounds();
  setBounds(5);
  //setBounds(-3.24, 3.24, 0, 10);
  //showMouseCoordinates = true;
  //draw = false;
  //applyMultiplier(0.0005);
  setMultiplier();
  axes();
  graph();
  //vector(xMin, yMax);
  //printGraphDetailsToConsole();
  data = new ArrayList<Point>();
  //data.add(new Point(1, 3));
  //data.add(new Point(3, 2));
  //data.add(new Point(4, 1));
  //data.add(new Point(3, 3));
  //data.add(new Point(-2, 4));
  //data.add(new Point(3, -5));
  //data.add(new Point(0, 0));
}

boolean draw = true;

void graph() {
  //multiplierAnimation();
  //yEqualsX();
  //xSquared();
  //xCubed();
  //sinX();
  //eToTheX();
  //showGraphingCompleteMessage();
}

void draw() {
  if (!draw)
    return;
  axes();
  graph();
  showMouseCoordinates();
  drawPoints();
  drawBestFitLine();
  //xSquaredAnimation();
}

boolean incrementMultiplier = false;

void multiplierAnimation() {
  float mInterval = 0.001;
  if (incrementMultiplier)
    m += mInterval;
  else m -= mInterval;
  applyStandardMultiplier(m);
  if (m == mInterval || m == 1)
    incrementMultiplier = !incrementMultiplier;
}

float k = 1;
boolean incrementK = true;

void xSquaredAnimation() {
  if (incrementK)
    k++;
  else k--;
  if (k == 100 || k == 1)
    incrementK = !incrementK;
  xSquared();
}

void printGraphDetailsToConsole() {
  println("Domain: ["+xMin+", "+xMax+"]");
  println("Range: ["+yMin+", "+yMax+"]");
}

void showGraphingCompleteMessage() {
  float textSize = 50;
  textSize(textSize);
  String message = "Domain: ["+xMin+", "+xMax+"]\n"+"Range: ["+yMin+", "+yMax+"]";
  float messageX = (displayWidth - textWidth(message))/2.0;
  float messageY = displayHeight * 0.125;
  float rectWidth = 1.05 * textWidth(message);
  float rectX = (displayWidth - rectWidth)/2.0;
  noFill();
  stroke(255, 0, 0);
  rect(rectX, messageY - textSize, rectWidth, 2.85 * textSize);
  text(message, messageX, messageY);
}
