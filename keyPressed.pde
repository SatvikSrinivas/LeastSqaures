
void keyPressed() {
  switch (key) {
  case '0':
    sinX = !sinX;
    break;
  case '1':
    yEqualsX = !yEqualsX;
    break;
  case '2':
    xSquared = !xSquared;
    break;
  case '3':
    xCubed = !xCubed;
    break;
  case 'e':
    eToTheX = !eToTheX;
  case 'm':
    showMouseCoordinates = !showMouseCoordinates;
    break;
  case 'r':
    sinX = false;
    yEqualsX = false;
    xSquared = false;
    xCubed = false;
    eToTheX = false;
    data = new ArrayList<Point>();
    break;
  }
}
