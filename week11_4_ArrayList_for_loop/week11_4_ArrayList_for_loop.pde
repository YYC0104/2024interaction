ArrayList<Integer> a = new Arralist<Integer>();
a.add(3);
a.add(5);
a.add(7);
for(Inter i : a){ //進階for迴圈
  println(i);
}
for(int i = 0; i < a.size(); i++){ //比較傳統的for迴圈
  println(a.get(i)); //你要用 .get(i)取出你要的那格
}
