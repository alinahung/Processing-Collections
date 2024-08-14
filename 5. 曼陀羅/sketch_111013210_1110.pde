//111013210 洪郁涵

float angle = 0;
float r = 15; 
int n = 0 ;

void setup(){
  size(900,900);
  rectMode(CENTER);
  stroke(0,15,30);
  strokeWeight(25);
}

void draw(){
  background(0,15,30);
  translate(width/2, height/2);
  scale(map(mouseX,0,width,0.5,5));
  for (int i = 0 ; i<100; i++){
    rotate(radians(angle));
    fill(i*10+r,i*r,i*20-r);
    if (i % 4 == 0){
      rect(0,0,600,600);
    }
    else {
      circle(0,0,700);
      n++;
    }
    if (mousePressed){
      angle-=0.001;
    }
    else{
      angle+=0.001;
    }
    scale(0.95);
    if (n == 3500){
      r = map(random(0,100),0,100,0,i);
      n = 0;
    }
  }
}
