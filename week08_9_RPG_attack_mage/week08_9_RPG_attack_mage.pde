int [][] floor = {
  {25, 22, 22, 22, 24, 25, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 2, 1, 3, 1, 3, 4, 21, 21, 21, 4, 5, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 21, 1, 6, 1, 4, 4, 4, 21, 21, 21, 4, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 7, 1, 4, 1, 8, 5, 8, 1, 1, 9, 1, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 21, 9, 21, 1, 2, 8, 5, 1, 10, 11, 10, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 7, 1, 21, 1, 1, 1, 1, 1, 21, 10, 5, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 6, 1, 21, 21, 21, 7, 10, 21, 21, 13, 10, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 14, 1, 1, 15, 1, 1, 1, 1, 21, 10, 10, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 5, 16, 1, 15, 1, 21, 21, 21, 11, 17, 5, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 1, 1, 1, 7, 1, 21, 1, 21, 1, 9, 1, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 21, 21, 1, 21, 1, 21, 1, 21, 21, 21, 1, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 18, 19, 21, 21, 21, 21, 1, 21, 21, 20, 1, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 24},
  {25, 22, 22, 22, 24, 25, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 24},
};

PImage img, user;
PImage []fimg = new PImage[40];
void setup() {
  size(640, 480);
  //15格 = 480，480/15 = 32，方格長32
  img = loadImage("640x480.png");
  user = loadImage("23.png"); //使用者 = 勇者
  for (int i = 1; i <= 25; i++) fimg[i] = loadImage(i + ".png");
}

int userI = 12, userJ = 15;
void draw() {
  //background(img);
  for (int i = 0; i < 15; i++) { //高度480 對應y座標(左手i)
    for (int j =0; j < 20; j++) { //寬度640 對應x座標(右手j)
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, 16, 16);
  textSize(30);
  text("Level:" + level, 16, 90);
  textSize(20);
  text("Level: " + hp, 16, 140);
  text("Attack: " + attack, 16, 170);
  text("Defense: " + defense, 16, 200);
  text("Magic: " + coin, 16, 230);
  text("Exp: " + exp, 16, 260);
  text("Coins: "+ coin, 16, 290);
  image(user, userJ*32, userI*32);
  if (gameOver == 1) background(0, 255, 0);
  if (gameOver == 2)background(255, 0, 0);
}

int level = 1, hp = 2963, attack = 14, defense = 16, magic = 10, exp = 72, coin = 72;
int gameOver = 0;
void keyPressed() {
  int newI = userI, newJ = userJ; //新的可能的位置
  if (keyCode == RIGHT) newJ++;
  if (keyCode == LEFT) newJ--;
  if (keyCode == UP) newI--;
  if (keyCode == DOWN) newI++;

  if (floor[newI][newJ] == 16 || floor[newI][newJ] == 10 || floor[newI][newJ] == 18 || floor[newI][newJ] == 4) { //遇到怪物
    if (hp-10 <= 0 )gameOver = 2;
    else {
      hp -= 10; //扣你的血
      coin += 10; //加錢
      exp += 1; //加經驗值
      userI = newI;
      userJ = newJ;
      floor[userI][userJ] = 21;
    }
  } else if (floor[newI][newJ] != 22 && floor[newI][newJ] != 1) { //不是石頭牆，也不是木牆，才能走過去
    userI = newI;
    userJ = newJ;

    if (floor[userI][userJ] == 18) gameOver = 1; //走道樓梯上，結束囉
    floor[userI][userJ] = 21;
  }
}
