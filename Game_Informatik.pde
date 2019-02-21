/*Imports*/
/*Imports*/

/*Classes*/
Background bg;
/*Classes*/

/*Global variabels*/
final int FRAMERATE = 60;
final float GRAV = 0.02; // Globale Gravitation

final float MAX_ACC = 0.5;
final float MAX_VEL = 15;

final int PLAYER_HEIGHT = 80;
final int PLAYER_WIDTH = 40;

ArrayList<Player> players;
/*Global variabels*/

void settings() {
  fullScreen();
}

void setup() {
  initClass();
  
  noCursor();
  frameRate(FRAMERATE);
  
  players = new ArrayList<Player>();
  
  players.add(new Player(new PVector(width/2, height/2), "red"));
  
}

void draw() {
  bg.drawBackground();
  
  for(Player p : players){
    p.move();
    p.showPlayer();
  }
  
}


/*Global Methods*/

public void initClass() {
  bg = new Background();
}
