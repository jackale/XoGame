class Ball{
  float x,y,r=20;
  float speed=1;
  
  Ball(float X,float Y){
    x = X; y = Y;
  }
  Ball(float X,float Y,float R){
    x = X; y = Y;r=R;
  }
  
  void setPos(float X,float Y){
    x = X; y = Y;
  }
  
  void update(){
    ellipse(x,y,r,r);
  } 
  
  void initialize(float X,float Y){
    x = X; y = Y;r=20;speed=1;
  }    
}
