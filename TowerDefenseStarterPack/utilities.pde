void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && mousePressed == false) {
    mouseReleased = true;
    wasPressed = false;
  }
}

void reset(){
   wave=0;
  size(1000, 800);
  initializeModes();
  initializeVariables();
  makeButtons();
  makeNodes();
  lives=3;
  
  strokeWeight(3);
}
