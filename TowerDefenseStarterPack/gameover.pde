//This function draws the GAMEOVER screen.

void gameOver() {
 drawGameover();
  handleGameoverButtons();
  
}

void drawGameover(){
 background(red);

  textSize(80);
  text("You lose", 490, 150);
  text("Better luck next time!", 500, 300);
     text("WAVES WON :" + (wave+1), 500, 700);
    menu.show();

    fill(black);
}

void handleGameoverButtons(){
    if(menu.clicked) {

   money = 10;
   lives = 3;
   wave = 0;
 
 reset();
       mode = INTRO;
  }
  
}
