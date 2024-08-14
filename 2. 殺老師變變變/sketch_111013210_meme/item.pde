class Item {
  float x ;
  float angle = 0;
  int i = 1;
  
  void move(){    
    if (n==0){
      y+=-2*i;
      x+=2*i;
    }
    if (x>width){
      n++;
      y=height;
      x=width;
    }
    if (n==1){
      y+=-2*i;
      x+=-2*i;
    }
    if (y<0){
      n++;
      y=0;
      x=width;
    }
    if (n==2){
       y+=2*i;
       x+=-2*i;
    }     
    if (y>height){
       n++;
       y=0;
       x=0;
     } 
    if (n==3){
       y+=2*i;
       x+=2*i;
    }    
    if (y>height){ 
       n=0;
       x=0;
       y=height;
    }
    
  }

  void show(){
    translate(x, y);
    rotate(angle);
    imageMode(CENTER);
    if (mousePressed &&(mouseButton) == LEFT){
    image(photo[2],0,0,300,300);
    x = width/2;
    y = height/2;
    angle+=0.01; 
    }
    if (mousePressed &&(mouseButton) == RIGHT){
    image(photo[3],0,0,150,150);
    angle+=0.5;
    i=4;
    }
    else if (!mousePressed){ 
    image(photo[1],0,0,100,100);
    angle+=0.2;
    i=1;
    }               
 }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
