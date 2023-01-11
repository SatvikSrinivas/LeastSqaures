

color[][] mouseCoordinatesDisplay;

boolean showMouseCoordinates = false;

void showMouseCoordinates() {
  if (!showMouseCoordinates)
    return;
  textSize(25);
  fill(0);
  String showMouseCoordinatesText = "("+mouseX()+", "+mouseY()+")";
  //mouseCoordinatesDisplay = new color[100][(int)(textWidth(showMouseCoordinatesText))];
  //for (int i = mouseX; i < mouseCoordinatesDisplay.length; i++) 
  //  for (int j = mouseY; j < mouseCoordinatesDisplay[i].length; j++)
  //    mouseCoordinatesDisplay[i][j] = get(j, i);
  text(showMouseCoordinatesText, mouseX, mouseY);
}


void mouseDraw() {
  stroke(255, 0, 0);
  lineSegment(0, 0, mouseX(), mouseY());
}
