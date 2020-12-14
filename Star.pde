class Stars {
  private int myX, myY;
  
  public Stars() {
    myX = (int)(Math.random()*900);
    myY = (int)(Math.random()*450);
  }
  
  public void show() {
    noStroke();
    fill(255,255,0);
    triangle(myX, myY, myX+4, myY+7, myX+8, myY);
    triangle(myX, myY+4.62, myX+4, myY-3.3, myX+8, myY+4.62);
  }
}
