class SpaceShip extends Floater { 
  public SpaceShip() {
    corners = 5;
    int []xC = {-12, 14, -12, -4, -4};
    int []yC = {-12, 0, 12, 12, -12};
    xCorners= xC;
    yCorners= yC;
    myColor = color(250, 0, 250);
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
