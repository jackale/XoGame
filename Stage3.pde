class Stage3 extends Stage{
  Ball ball= new Ball(115, border-50);
  PowerBar bar = new PowerBar();
  Angle angle = new Angle((int)ball.x, (int)ball.y, 100);
  int mode = 0;
  float t = 0;
  boolean clear = false;

  void update() {
    g=9.8;
     if(keyPressed){
          if(key == TAB){ //let clear 
            mode = 3;
            clear = true;
          }
     }
     textSize(25);
     text(" <-  3m/s ! !",WIDTH/2,HEIGHT/2-100);
      
    switch(mode) {
    case 0: // bar
      bar.update();
      ball.update();
      break;
    case 1:
      ball.update();
      angle.update();
      break;
    case 2:
      noStroke();
      fill(white);
      ellipse(ball.x,ball.y,ball.r+5,ball.r+5);
      ball.update();
      t += ball.speed/30;
      //angle.angle = 30;
      ball.x = 115 + (bar.getPower()*cos(radians(angle.angle)) - 15*t)*t;
      ball.y = border - 50 -bar.getPower()*sin(radians(angle.angle))*t + 0.5*g*t*t*10;
      fill(black);
      ball.update();
      if(ball.y>=border || ball.x>=WIDTH) mode++;
      if(judge(ball.x,ball.y,Goalw,Goalh,ball.r)){
        clear = true;
        mode++;
      }
      if(judge(ball.x,ball.y,Goalw+25,Goalh,ball.r)){
        clear = true;
        mode++;
      }
      if(judge(ball.x,ball.y,Goalw,Goalh+25,ball.r)){
        clear = true;
        mode++;
      }
      if(judge(ball.x,ball.y,Goalw+25,Goalh+25,ball.r)){
         mode++;
         clear = true;
      }
      break;
    case 3:
      background(255);
      if(clear){
        fill(color(62,147,67));
        textSize(50);
        text("Congratulations!!!",WIDTH/2,HEIGHT/2-100);
        textSize(25);
        text("Next Stage: N",WIDTH/2,HEIGHT/2);
        stroke(black);
        text("Top: T",WIDTH/2,HEIGHT/2+50);
        if(keyPressed){
          if(key == 'N' || key == 'n') mode++;
          if(key == 'T' || key == 't'){
            mode++;
            clear = false;
            scene=0;
          }
        }
      }
      else{
        fill(color(143,19,160));
        textSize(50);
        text("Game Over...",WIDTH/2,HEIGHT/2-100);
        textSize(25);
        text("Retry: R",WIDTH/2,HEIGHT/2);
        text("Top: T",WIDTH/2,HEIGHT/2+50);
        if(keyPressed){
          if(key == 'R' || key == 'r') mode++;
          if(key == 'T' || key == 't'){ scene = mode = 0;}
        }
      }
      break;
    case 4:
      background(255);
      ball.initialize(115, border-50);
      bar.initialize();
      angle.initialize((int)ball.x, (int)ball.y, 100);
      t=0;
      if(clear) mode++;
      else mode = 0;
      clear = false;
      break;
    case 5:
      background(255);
      scene = 4;
      break;
    default:
      background(0);
      break;
    }
  }
}
