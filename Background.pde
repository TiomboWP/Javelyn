class Background {

  PGraphics backestBG;

  public Background() {
    initBackestBG();
  }

  public void drawBackground() {

    background(255);
    showBG();
    
  }

  public void showBG() {

    image(backestBG, 0, 0);
  }

  public void initBackestBG() {
    backestBG = createGraphics(width, height);
    backestBG.beginDraw();
    int r = 153, g = 41, b = 214;
    backestBG.noStroke();
    int rh = 5; // höhe Rechteck
    for (int i = 0; i < height; i += rh) {
      backestBG.fill(r + i/10, g + i/10, b + i/10);
      backestBG.rect(0, i, width, rh);
    }
    backestBG.endDraw();
  }
}
