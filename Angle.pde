class Angle{
  float angle,len,x,y,Cx,Cy,speed;
  Angle(int CX,int CY,float Len){
    angle=0;speed=1;
    Cx=CX;Cy=CY;len=Len;
    x=Cx+(int)len;y=Cy;
  }
  
  void update(){
    noStroke();
    fill(white);
    arc(Cx, Cy, Cx+len, Cy - len, radians(270), radians(362));
    fill(black);
    ellipse(Cx,Cy,20,20);
    
    angle += speed;
    if(angle>=90) angle = 0;
    x = (float)Cx + (len * cos(radians(angle)));
    y = (float)Cy - (len * sin(radians(angle)));
    stroke(black);
    line(Cx,Cy,x,y);
    
    //textSize(25);
    //text("Push Enter to decide Angle ! !  : Enter",WIDTH/2,HEIGHT/2-100);
  }  
  
  void initialize(int CX,int CY,float Len){
    angle=0;speed=1;
    Cx=CX;Cy=CY;len=Len;
    x=Cx+(int)len;y=Cy;
  }
}
