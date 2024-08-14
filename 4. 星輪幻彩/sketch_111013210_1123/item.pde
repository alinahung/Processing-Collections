class Item{
  float tx = 0 ;
  float ty = 0;
  float dia = random(8,25);
  float i = 1;
  
  void move(int n) {      
    if (n==0){
       tx -= 3*i;
       ty -= 3*i;
      }      
     else if (n==1){
       tx += 3*i;
       ty += 3*i;
     }     
     else if (n==2){
       tx += 3*i;
       ty -= 3*i;        
      }  
      else if (n==3) {
        tx -= 3*i;
        ty += 3*i;
      }
      else if (n==4) {
        tx -= 6*i;
        ty += 8*i;
      }
      else if (n==5) {
        tx += 8*i;
        ty += 15*i;
      }
      else if (n==6) {
        tx += 5*i;
        ty -= 12*i;
      }
      else if (n==7) {
        tx += 5*i;
      } 
      else if (n==8) {
        tx -= 5*i;
      }
      if (tx<-width/2||tx>width/2) { 
          tx = 0;
          ty = 0;
        }     
   }      
  void show(){ 
    stroke(255-10*r,15*r,30*r);
    circle(tx,ty,dia); 
  }
}
