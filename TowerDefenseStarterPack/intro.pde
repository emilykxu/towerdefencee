//This function draws the INTRO screen.

void intro() {
  
introAnimation.show();
  textFont(arinoe);
start.show();
textSize(100);
  fill(blue);
text("TOWER DEFENSE", 500, 100);


if(start.clicked){
  mode = MAPSELECT;
  
  
}
}
