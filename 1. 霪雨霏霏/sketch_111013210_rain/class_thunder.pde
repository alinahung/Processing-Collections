class Thundering { 
  float tx = random(width) ;
  float ty = random(height);
  float ts = random(50,90);
 
  void move(int n) {
    if (n==0){
      tx=random(2*ts/3,width/2);
      ty=random(2*ts/3,height/2);
    }
    else if (n==1){
      tx=random(2*ts/3,width/2);
      ty=random(height/2,height-2*ts/3);
    }
    else if (n==2){
      tx=random(width/2,width-2*ts/3);
      ty=random(2*ts/3,height/2);
    }  
    else {
      tx=random(width/2,width-2*ts/3);
      ty=random(height/2,height-2*ts/3);
    }  
  }
  
  void show() {
    image(photo02,tx,ty,ts,ts);   
  }
  
  
}
