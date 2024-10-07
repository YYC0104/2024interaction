int N = 299;
PImage [] imgs = new PImage[299];
void setup(){
  size(800, 800);
  //把 list.txt 的299行，放入 filenames 裡
  String [] filenames = loadStrings("list.txt");
  for(int i=0; i < N; i++){ //把每一張圖都讀近來
    imgs[i] = loadImage(filenames[i]);
  } //迴圈執行較久，因為圖檔多
}
void draw(){
  int i = frameCount % N; //照時間輪 % N 去取餘數，避免超過陣列
  background(imgs[i]); //現在要顯示第i張圖
}
