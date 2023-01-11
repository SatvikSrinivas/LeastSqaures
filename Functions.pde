
float plotRadius = 20;

void plot(float x, float y) {
  noStroke();
  fill(color(255, 0, 0));
  circle(getX(x), getY(y), plotRadius);
}

void plot(float x, float y, color c) {
  noStroke();
  fill(c);
  circle(getX(x), getY(y), plotRadius);
}

float increment, multiplier, x, y;

boolean yEqualsX = false, xSquared = false, xCubed = false, sinX = false, eToTheX = false;

void yEqualsX() {
  if (!yEqualsX)
    return;
  for (x = xMin; x < xMax; x+= increment) {
    y = x;
    plot(x, y);
    increment = 0;
    while (dist (x, y, x + increment, x + increment) < 0.5 * multiplier * plotRadius)
      increment += 0.001 * multiplier * displayWidth;
  }
}

void xSquared() {
  if (!xSquared)
    return;
  for (x = xMin; x < xMax; x+= increment) {
    y = x * x;
    plot(x, y);
    increment = 0;
    while (dist (x, y, x + increment, (x + increment) * (x + increment)) < 0.025 * multiplier * plotRadius)
      increment += 0.00001 * multiplier * displayWidth;
  }
}

void xCubed() {
  if (!xCubed)
    return;
  for (x = xMin; x < xMax; x+= increment) {
    y = x * x * x;
    plot(x, y);
    increment = 0;
    while (dist (x, y, x + increment, (x + increment) * (x + increment) * (x + increment)) < multiplier * 0.5 * plotRadius)
      increment += 0.00001 * multiplier * displayWidth;
  }
}

void sinX() {
  if (!sinX)
    return;
  for (x = xMin; x < xMax; x+= increment) {
    y = sin(x);
    plot(x, y);
    increment = 0;
    while (dist(x, y, x+increment, sin(x+increment)) < multiplier * plotRadius)
      increment += 0.00001 * multiplier * displayWidth;
  }
}

float eMultiplier = 1;

void eToTheX() {
  //if (!eToTheX)
  //  return;
  for (x = xMin; x < xMax; x+= increment) {
    y = (float) Math.exp(x);
    plot(x, y);
    increment = 0;
    while (dist(x, y, x+increment, (float) Math.exp(x+increment)) < multiplier * 0.5 * eMultiplier * plotRadius) {
      //if (x > 0)
      //  eMultiplier = 0.5;
      increment += 0.0001 * multiplier * displayWidth;
    }
  }
}
