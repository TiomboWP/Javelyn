class Player {

  private Item item;
  private int health;
  private PVector pos, acc, vel;
  private String texture;
  
  public Player(PVector pos, String collor){
    
    this.pos = pos;
    this.vel = new PVector(0,0);
    this.acc = new PVector(0,0);
    this.texture = "textures/characters/male-" + collor + ".png";
    
  }
  
  public void move(){
    
    this.acc.add(0, GRAV);
    this.acc.limit(MAX_ACC);
    
    this.vel.add(acc);
    this.vel.limit(MAX_VEL);
    
    this.pos.add(vel);
    
  }
  
  public void showPlayer(){
    rectMode(CENTER);
    
    stroke(0);
    fill(200,200,200);
    
    strokeWeight(2);
    rect(pos.x, pos.y-PLAYER_HEIGHT/2,PLAYER_WIDTH, PLAYER_HEIGHT, 5);
    
  }
  
}
