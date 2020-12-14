class Asteroids extends Floater {
  int spinSpd;
  public Asteroids() {
    myDirectionX = ((Math.random()*1.5)-1.5);
    myDirectionY = ((Math.random()*1.5)-1.5);
    corners = 5;
    spinSpd = ((int)((Math.random()*PI)*2));
    int []xS = {-6, -5, 6, 5, 3, -6};
    int []yS = {-3, -6, -6, 3, 6, -5};
    xCorners = xS;
    yCorners = yS;
    myColor = color(125);
  }
  public void show() {
    noStroke();
    super.show();
  }
  public void move() {
    super.move();
    rotate(spinSpd);
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;} 
  public void setY(int y) {myCenterY = y;} 
  public int getY() {return (int)myCenterY;} 
  public void setDirectionX(double x) {myDirectionX = x;} 
  public double getDirectionX() {return myDirectionX;} 
  public void setDirectionY(double y) {myDirectionY = y;} 
  public double getDirectionY() {return myDirectionY;} 
  public void setPointDirection(int degrees) {myPointDirection = degrees;} 
  public double getPointDirection() {return myPointDirection;} 
}
