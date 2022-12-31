//This function draws the BUILD screen

void build() {
  drawMap();
  drawBuildInterface();
  animateThings();
  handleBuildClicks();
  
  
  
  
}

void drawBuildInterface() {
   stroke(white);
   fill(black);
   rect(900, height/2, 300, height);
   
   //lives 
   fill(white);
   textSize(25);
   text("LIVES: "+ lives, 800, 50);
      text("MONEY: "+ money, 900, 50);
   
   //playyyy timeeeee yayyyyy
   playMode.show();
   
   //place towerssssss
   buyGun.show();
   
   aoeRing.show();
   
   sniper.show();
   
   fill(black);
  textSize(30);
  text("$5", 860, 180);
  text("$10", 860, 330);
  text("$10", 860, 530);
  
  textSize(100);
  fill(red);
  text("BUILD MODE", 400, 200);
 
}

void  handleBuildClicks() {
  if (playMode.clicked) {
    mode = PLAY;
  }
  if (buyGun.clicked && money >=5) {
   towers.add(new Tower(GUN));
    money -= 5;
   
  }
  
   if (aoeRing.clicked && money >=10) {
   towers.add(new Tower(AOE));
    money -= 10;
  }
  
   if (sniper.clicked && money >=10) {
   towers.add(new Tower(SNIPER));
    money -= 10;
  }


}
