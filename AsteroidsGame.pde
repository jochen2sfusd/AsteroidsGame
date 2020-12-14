Stars[] starryNight = new Stars[90];
SpaceShip falco = new SpaceShip();
ArrayList <Asteroids> rocks = new ArrayList <Asteroids> ();
ArrayList <Bullet> bulletian = new ArrayList <Bullet> ();
int distance, distance2;
boolean shot = false;

public void settings() {
  size(900, 450);
}

public void setup() {
  background(0);
  for (int i = 0; i < starryNight.length; i++) {
    starryNight[i] = new Stars();
  }
  for (int j = 0; j < 80; j++) {
    rocks.add((j), new Asteroids());
    rocks.get(j).setX((int)(Math.random() * 700));
    rocks.get(j).setY((int)(Math.random() * 700));
  }
  for (int z = 0; z < 1; z++) {
    bulletian.add((z), new Bullet());
  }
  falco.setX(450);
  falco.setY(200);
}

public void draw() {
  background(0);
  falco.move();
  falco.show();
  for (int i = 0; i < starryNight.length; i++) {
    starryNight[i].show();
  }
  for (int j = 0; j < rocks.size(); j++) {
    rocks.get(j).show();
    rocks.get(j).move();
    distance = (int) Math.sqrt((falco.getX() - rocks.get(j)
    .getX()) * (falco.getX() - rocks.get(j).getX()) + (falco
        .getY() - rocks.get(j).getY()) * (falco.getY() -
        rocks.get(j).getY()));
    if (distance <= 20) {
      rocks.remove(j);
      break;
    }
  }
  for (int z = 0; z < bulletian.size(); z++) {
    if (shot == true) {
      bulletian.get(z).show();
      bulletian.get(z).move();
    }
  }
  for (int j = 0; j < rocks.size(); j++) {
    for (int z = 0; z < bulletian.size(); z++) {
      if (shot == true) {
        distance2 = (int) Math.sqrt((bulletian.get(z).getX() -
          rocks.get(j).getX()) * (bulletian.get(z)
          .getX() - rocks.get(j).getX()) + (
          bulletian.get(z).getY() - rocks.get(j)
          .getY()) * (bulletian.get(z).getY() -
          rocks.get(j).getY()));
        if (distance2 <= 10) {
          rocks.remove(j);
          break;
        }
      }
    }
  }
}

public void keyPressed() {
  if (keyCode == LEFT) { // left key
    falco.rotate(-45);
  }
  if (keyCode == RIGHT) { //right key
    falco.rotate(45);
  }
  if (keyCode == 38) { //up key
    falco.accelerate(.5);
  }
  if (keyCode == DOWN) { // down key
    falco.accelerate(-.5);
  }
  //hyperspace
  if (keyCode == 79) //o key 
  {
    //direction
    falco.setDirectionX(0);
    falco.setDirectionY(0);
    //position
    falco.setX((int)(Math.random() * 700));
    falco.setY((int)(Math.random() * 700));
    falco.setPointDirection((int)(Math.random() * 360));
  }
  if (keyCode == 32) {
    shot = true;
    bulletian.add((1), new Bullet());
  }
}
