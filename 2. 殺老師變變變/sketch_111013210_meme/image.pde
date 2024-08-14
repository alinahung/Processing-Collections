class Image{
  void show(){
    
    imageMode(CORNER);
    
    if (n==0){
      image(views[1],0,0,width,height);
    }
    
    if (n==1){
      image(views[2],0,0,width,height);
    }
    
    if (n==2){
      image(views[3],0,0,width,height);
    }     
     
    if (n==3){
      image(views[4],0,0,width,height);
    }
    
  }
}
  
  
  
  
  
  
  
  
  
  
  
  
