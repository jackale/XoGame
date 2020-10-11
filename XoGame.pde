color white = color(255, 255, 255);
color black = color(0,0,0);

int WIDTH = 1000;
int HEIGHT = 650;
int Goalw = 750;
int Goalh = 300;
int border = HEIGHT - 200;
int mode = 0; //0:bar 1:degree 2:shoot 
int scene = 0; //0:start 1:stage1 ...
float g=9.8;

Stage stage;
Stage2 stage2;
Stage3 stage3;
Stage4 stage4;

void setup(){ 
  textSize(50);
  textAlign(CENTER);
  size(WIDTH, HEIGHT);
  colorMode(RGB,256);
  background(white);
  fill(black);
  stage = new Stage();
  stage2 = new Stage2();
  stage3 = new Stage3();
  stage4 = new Stage4();
}

void draw(){
  switch(scene){
    case 0:  //start;
      background(255);
      fill(color(150,200,100));
      textSize(70);
      text("XoGame",WIDTH/2,HEIGHT/2-100);
      textSize(50);
      text("Start: S",WIDTH/2,HEIGHT/2);
      text("Exit: ESC",WIDTH/2,HEIGHT/2+50);
      if(keyPressed){
        if(key == 'S' || key == 's'){
          scene++;
          background(255);
        }
      }
      break;
    case 1:
      fill(black);
      rect(0, border, WIDTH, HEIGHT);    //GND
      noStroke();
      fill(color(201,22,28));
      rect(Goalw,Goalh,25,25);              //GOAL
      fill(black);
      rect(Goalw+25,Goalh,2,border - Goalh);
      stage.update();
      break;
    case 2:
      fill(black);
      rect(0, border, WIDTH, HEIGHT);    //GND
      noStroke();
      fill(color(201,22,28));
      rect(Goalw,Goalh,25,25);              //GOAL
      fill(black);
      rect(Goalw+25,Goalh,2,border - Goalh);
      stage2.update();
      break;
    case 3:
      fill(black);
      rect(0, border, WIDTH, HEIGHT);    //GND
      noStroke();
      fill(color(201,22,28));
      rect(Goalw,Goalh,25,25);              //GOAL
      fill(black);
      rect(Goalw+25,Goalh,2,border - Goalh);
      stage3.update();
      break;
    case 4:
      fill(black);
      rect(0, border, WIDTH, HEIGHT);    //GND
      noStroke();
      fill(color(201,22,28));
      rect(Goalw,Goalh,25,25);              //GOAL
      fill(black);
      rect(Goalw+25,Goalh,2,border - Goalh);
      stage4.update();
      break;
  }
  
  if(keyPressed){
    if(key == ESC) exit();
  }
}

void keyReleased(){
  if(key == ENTER && scene > 0){    
    if(stage.mode<2 && scene == 1) stage.mode++;
    if(stage2.mode<2 && scene == 2) stage2.mode++;
    if(stage3.mode<2 && scene == 3) stage3.mode++; 
    if(stage4.mode<2 && scene == 4) stage4.mode++; 
  }
}


