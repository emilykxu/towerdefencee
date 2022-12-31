//This function draws the PLAY screen

void play() {
  
  background(green);
  drawMap();
  animateThings();
  drawPlayInterface();
  handleButtonClicks();
}

void drawMap() {

  if (map == 1) 
  map1(); 
if(map == 2)
map2();
  

  //temp node drawing space
  for (int i = 0; i < 0; i++) {
    map2nodes[i].show();
  }
}



//temporary node drawings
//int i = 0;
//while (i < 8) {
//  nodes[i].show();
//  i++;
//}

void drawPlayInterface() {
  fill(black);

  rect(900, 300, 300, 1000);

  fill(255);
  textSize(30);
  text("NEXT WAVE:" + (wave), 870, 20);
  text("Lives: " + lives, 850, 500);
  text("Money: $" + money, 850, 600);
  nextWave.show();
  fill(white);
  image(play, 870, 100, 100, 100);
  stroke(3);



  //build
  build.show();
}

void animateThings() {
  int i = 0;
  while (i < mobs.size()) {
    Mob myMob = mobs.get(i);
    myMob.act();
    myMob.show();
    if (myMob.hp <= 0) {
      mobs.remove(i);
      money += value;
    } else {
      i++;
    }

    if (myMob.x > 800) {
      lives--;
    }
    if (lives <= 0) {
      mode = GAMEOVER;
    }
  }
  i = 0;
  while (i < towers.size()) {
    Tower myTower = towers.get(i);
    println (myTower.cooldown);
    if (mobs.size() > 0) myTower.act();
    myTower.show();
    i++;
  }
  i = 0;
  while (i < bullets.size()) {
    Bullet myBullet = bullets.get(i);
    myBullet.act();
    myBullet.show();
    if (myBullet.hp <= 0) {
      bullets.remove(i);
    } else {
      i++;
    }
  }
}
void handleButtonClicks() {
  if (nextWave.clicked) {
    //mobs.add(new Mob(0, 400, 1, 0));
    //waveNumber++;
    addWave();
    wave++;
  }

  if (build.clicked) {
    mode = BUILD;
  }
}




void addWave() {
  int i = 0;
  float x = 0;
  float y = begin.y;
  while (i <= wave) {
    mobs.add(new Mob(x, y, begin.dx, begin.dy));
    x = x - 50;
    i++;
  }

  if (wave % 2 == 0) {
    i = 0;
    x = 0;
    y = begin.y;
    while (i < wave/2) {
      mobs.add(new ChonkyMob(0, y, begin.dx, begin.dy));
      i++;
    }
  }

  if (wave % 3 == 0) {
    i = 0;
    x = 0;
    y = begin.y;
    while (i < wave/3) {
      mobs.add(new SpeedyMob(0, y, begin.dx, begin.dy));
   
      i++;
    }
  }
}
