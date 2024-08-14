Item[] item = new Item [9];
float x = 250;
float y = 250;
float angle = 90 ;
float p = 20;
float r = 25 ;
float n = 0;

void setup(){  
  size(800,800);  
  for (int m = 0; m < item.length;m++){
    item[m] = new Item();   
  }
  rectMode(CENTER);
  noFill();
  strokeWeight(10);
  stroke(#eeeeee);
}
void draw (){
   background(#000000);
   translate(width/2,height/2);
   if (mousePressed &&(mouseButton) == LEFT){
     scale(map(mouseX,0,width,0.5,2));
   }
   for (int m = 0; m < item.length; m ++){
      item[m].move(m);
      item[m].show();
   }   
   rotate(radians(angle/3));     
   for (float a=0; a<360; a+=10){     
     pushMatrix();     
     n++;
     
     if (angle<360) rotate(radians(a)*cos(radians(angle)));   
     else rotate(radians(a));
     
     stroke(5*r,10*r,255-20*r);
     strokeWeight(3);
     line(x*sin(radians(angle)), 0, 0, y-p/2);
     
     noStroke();
     fill(255-10*r,10*r,20*r);
     ellipse(x*sin(radians(angle)), 0, p/2, p/2);
     stroke(10*r,255-5*r,20*r);
     noFill();
     ellipse(0, y, p, p+5);
     
     stroke(255-10*r,10*r,30*r);
     line(x*sin(radians(angle)), y+p/2, 0, y*cos(radians(angle))+p/2 );
          
     if (n == 2500){
       r = random(0,100);
       n = 0;
     }      
     popMatrix();      
     }
     if (mousePressed &&(mouseButton) == RIGHT){     
       angle+=5;
     }
     else{
       angle++;
    }
}
