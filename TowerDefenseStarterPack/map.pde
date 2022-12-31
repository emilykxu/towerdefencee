void mapSelect() {
 drawMapSelect();
 mapSelectClicks();

}

void drawMapSelect() {
  

  
  background(orange);
  fill(black);
 



  map1.show();
image(ocean, 300, 400, 200, 200);
  map2.show();
  fill(black);
  image(grass, 690, 400, 200, 200);
   text("LAND MODE", 690, 580);
  text("OCEAN MODE", 300, 580);
 
}

void mapSelectClicks() {
  if (map1.clicked) {
    map = 1;
    nodes = map1nodes;
    mode = PLAY;
    begin = new Node(height/2, 400, 1, 0);
  }

 if (map2.clicked) {

    map = 2;
    nodes = map2nodes;
    mode = PLAY;
    begin = new Node(50, 450, 1, 0);
  }


}


void map1(){
  
image(ocean, 400, 400, 1000, 1700);
    strokeWeight(30);
    stroke(tan);
    line(0, 400, 200, 400);
    line(200, 400, 200, 200);
    line(200, 200, 400, 200);
    line(400, 200, 400, 600);
    line(400, 600, 300, 600);
    line(300, 600, 300, 500);
    line(300, 500, 500, 500);
    line(500, 500, 500, 400);
    line(500, 400, 1000, 400);
    strokeWeight(1);

    fill(green);
}


void map2(){
  
  image(grass, 400, 400, 800, 800);
 image(flower, 400, 650, 800, 300);
   stroke(brown);
    strokeWeight(42);
    line(0, 450, 400, 450);
    line(400, 450, 400, 200);
    line(400, 200, 600, 200);
    line(600, 200, 600, 350);
    line(600, 350, 1000, 350);
    strokeWeight(3);
  }
  
