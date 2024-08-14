class Clouding {
  float cx = random(width);
  int cy = 0;
  float cz = random(150,200);
  float cw = random(80,120);
  float cs = map(cz,150,200,-0.5,0.5);
  
  
  void move() {
    if (cx-cz/10<0){
     cx = cx + cs ;      
    }
    else if (cx>width+cz/10){
     cx = -cx + cs ; 
     }
     cx = cx + cs ;
  }
  
  void show() {
     image(photo01,cx,cy,cz,cw); 
  }
}
