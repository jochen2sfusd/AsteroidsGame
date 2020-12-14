class Asteroids extends Floater {
 int rotSpeed;
 public Asteroids() {
 myDirectionX = ((Math.random()*2)-2);
 myDirectionY = ((Math.random()*2)-2);
 corners = 5;
 rotSpeed = ((int)((Math.random()*PI)*2));
 int []xS = {-13, -1, 9, 11, 3, -9};
 int []yS = {-3, -8, -6, 2, 7, -5};
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
 rotate(rotSpeed);
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
