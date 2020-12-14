class Bullet extends Floater {
  private double dRadians;
  public Bullet() {
    myCenterX = falco.getX();
    myCenterY = falco.getY();
    dRadians = falco.getPointDirection() * (Math.PI / 180);
    myDirectionX = (int)(4 * Math.cos(dRadians) + falco.getDirectionX());
    myDirectionY = (int)(4 * Math.sin(dRadians) + falco.getDirectionY());
  }
  public void move() {
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)(myCenterX), (float)(myCenterY), 12, 3);
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int) myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int) myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
