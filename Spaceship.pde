class SpaceShip extends Floater 
{ 
 public SpaceShip() {
 corners = 5;
 //xCorners = new int[corners];
 //yCorners = new int[corners];
 /* xCorners[0] = -10;
 yCorners[0] = -10;
 xCorners[1] = 14;
 yCorners[1] = 0;
 xCorners[2] = -10;
 yCorners[2] = 10;
 xCorners[3] = -3;
 yCorners[3] = 3;
 xCorners[4] = -3;
 yCorners[4] = -3; */
 int []xS = {-10, 14, -10, -3, -3};
 int []yS = {-10, 0, 10, 3, -3};
 xCorners= xS;
 yCorners= yS;
 myColor = color(255,255,0);
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
