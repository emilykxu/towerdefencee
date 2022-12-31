//Tower Defense Gameeeeeee
//Emily Xu
//Programming 12

// ================ GLOBAL VARIABLES =================

final int INTRO    = 0;
final int PLAY     = 2;
final int BUILD    = 3;
final int GAMEOVER = 4;
final int MAPSELECT = 1;
int mode;
int map;

color tan = #f3dfc1;
color white = #FFFFFF;
color gray = #F5F5F5;
color black = #000000;
color pink = #FF59FE;
color orange = #FFCA3A;
color green = #8AC926;
color blue = #1982C4;
color red = #FF0000;
color purple = #6A4C93;
color brown = #C4A484;


//Mouse & Keyboard interaction variables
boolean mouseReleased;
boolean wasPressed;

//Buttons
Button start, nextWave, build, playMode, buyGun, aoeRing, sniper, map1, map2, menu;

//Collections of objects
Node[] nodes;
Node[] map1nodes;
Node[] map2nodes;
ArrayList<Mob> mobs;
ArrayList<Tower> towers;
ArrayList<Bullet> bullets;
ArrayList<aoeRing> rings;
int county, slowCounty;

int invincibility = 0;
int aoeInvincible = 0;
int slowReset = 0;

//Images and Gifs
Gif introAnimation;
PImage avocado, play, grass, ocean, flower;
//Fonts
PFont arinoe;
//int cooldown, threshold, x, y;
//lives, money
int lives = 1;
int money = 50;
int value = 20;
int wave;
Node begin;

//towers
final int GUN = 0;
final int AOE = 1;
final int SNIPER = 2;
final int[] price = {5, 15, 20};
// ===================== SETUP =========================

void setup() {
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  size(1000, 800);
  initializeModes();
  initializeVariables();
  makeButtons();
  makeNodes();
wave = 0;
  play = loadImage("play.png");
  avocado = loadImage("avocadp-removebg-preview.png");
 
  introAnimation = new Gif("frame_", "_delay-0.07s.gif", 48, 2, 500, 400, width, height);

}
void initializeModes() {
  //set up the default mode for things
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = INTRO;

}

void initializeVariables() {
  //Load Images & Gifs
 grass = loadImage("grass.jpeg");
  ocean = loadImage("ocean.jpeg");
    flower = loadImage("flowerz-removebg-preview.png");
  //Load Fonts
arinoe = createFont("Arinoe.ttf", 200);
  //Create Collections of Objects
  mobs = new ArrayList<Mob>();
  towers = new ArrayList<Tower>();
  bullets = new ArrayList<Bullet>();
  rings = new ArrayList<aoeRing>();
  //test towers
  //towers.add(new Tower(300, 400, 0, 60));
}

void makeButtons() {
  //INTRO - Start

  start = new Button("START", width/2, 3*height/4, 200, 100, white, black);

  //PLAY - Next Wave, To Build Mode
  nextWave = new  Button(play, 870, 100, 120, 120, green, white);
  //BUILD - To play mode, Buy S niper, Buy Gun, Buy AoE
  build = new Button("build", 870, 250, 120, 120, green, white);

  playMode = new Button("PLAY", 870, 700, 120, 120, green, white);

  buyGun = new Button("buy guns", 870, 150, 120, 120, green, white);

  aoeRing =  new Button("AOE", 870, 300, 120, 120, green, white);

  sniper =  new Button("sniper", 870, 500, 120, 120, green, white);

menu = new Button("back", 500, 500, 500, 500, green, white);
  //map
  map1 = new Button(" ", 300, 400, 280, 280, black, red);
  map2 = new Button(" ", 690, 400, 280, 280, black, red);
  menu = new Button("Restart", 500, 550, 250, 100, blue, white);

  //GAMEOVER - Reset
}

void makeNodes() {
  //Plot the nodes on the map
  map1nodes = new Node[8];

  map1nodes[0] = new Node(200, 400, 0, -1);
  map1nodes[1] = new Node(200, 200, 1, 0);
  map1nodes[2] = new Node(400, 200, 0, 1);
  map1nodes[3] = new Node(400, 600, -1, 0);
  map1nodes[4] = new Node(300, 600, 0, -1);
  map1nodes[5] = new Node(300, 500, 1, 0);
  map1nodes[6] = new Node(500, 500, 0, -1);
  map1nodes[7] = new Node(500, 400, 1, 0);
  
     map2nodes = new Node[4];

  map2nodes[0] = new Node(400, 450, 0, -1);
  map2nodes[1] = new Node(400, 200, 1, 0);
  map2nodes[2] = new Node(600, 200, 0, 1);
  map2nodes[3] = new Node(600, 350, 1, 0);

}


// ===================== DRAW ===========================

void draw() {
  click();
  if (mode == INTRO) {
    intro();
      } else if (mode == MAPSELECT) {
    mapSelect();
  } else if (mode == PLAY) {
    play();
  } else if (mode == BUILD) {
    build();
  } else if (mode == GAMEOVER) {
    gameOver();
  }
}
