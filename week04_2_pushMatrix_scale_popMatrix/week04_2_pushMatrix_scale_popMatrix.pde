size(500, 500);

//google:taiwan svg 下載 svg 檔(檔案總管 - 檢視 - 副檔名)
PShape taiwan = loadShape("Taiwan-icon.svg");
PShape taiwan2 = loadShape("tw.svg");
// 本周要教 PShape loadShape shape
pushMatrix();
  scale(10);
  shape(taiwan);
popMatrix();

pushMatrix();
  scale(0.5);
  shape(taiwan2);
popMatrix();
