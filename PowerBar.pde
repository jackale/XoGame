class PowerBar{
  int power;
  int max;
  int speed = 2;
  
  
  PowerBar(){
    power=0;
    max = 200;
    fill(white);
    rect(10,border-max,20,max);
  }
  void Reflesh(){
    stroke(black);
    fill(white);
    rect(10,border-max,20,max);
    power = 0;
  }
  
  
  void update(){    
    power+=speed;
    if(power>max) Reflesh();
    stroke(black);
    fill(black);
    rect(10,border-power,20,power);
  }
  
  float getPower(){
    return (float)power+130;
  }
  
  void initialize(){
    power=0;
    max = 200;
    fill(white);
    stroke(black);
    rect(10,border-max,20,max);
  }
}
