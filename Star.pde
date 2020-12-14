class Stars {
 private int myX, myY;
 public Stars() {

 myX = (int)(Math.random()*700);
 myY = (int)(Math.random()*700);
 }
 public void show() {
 noStroke();
 fill(0,255,0);
 ellipse(myX, myY, 5, 5);
 }
}
