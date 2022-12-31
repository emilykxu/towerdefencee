class ChonkyMob extends Mob {
  ChonkyMob(float _x, float _y, float _vx, float _vy){
  super(_x, _y, _vx, _vy);
  d = 100;
  maxhp = 20 + wave;
  hp = maxhp;
  value = 5;
  speed = 0.5;
  fillColor = pink;
  strokeColor = orange;
 // zombie1 = pic;
  }
}
