class Raining {  
  float x = random(width);
  float y = random(-500,-30);
  float z = random(0,15);
  float length = map(z,0,15,8,25);
  float yspeed = map(z,0,15,3,18);
  float k ;
  

  void fall() {
    y = y + yspeed;
    float g = map(z,0,15,0,0.25);
    yspeed = yspeed+g;
    
    if (y > height){
        y = random(-500,-30);
        yspeed = map(z,0,15,3,18);
        r++;
        if (r == q){
          r=0;
          for (int m = 0; m < thunder.length; m ++){
            thunder[m].move(m);
          }
        }
      } 
    }
  
  void show(){
    float thick = map(z,0,20,1,3);
    strokeWeight(thick);
    
    if (mousePressed){
      line(x,y,x+k,y+length);
      k = map(mouseX,0,width,-10,15);
      stroke(169,156,245);
    }
    else{ 
      line(x,y,x,y+length);
      stroke(122,161,198);
    }
  }
}
