//111013210 洪郁涵 期末報告
float x,y,r = 0; 
float xoff,yoff,zoff = 0;
float noiseMax = 0;
float spin = 0;
float k,s = 0;
import processing.sound.*;
SoundFile song;

void setup(){
  song = new SoundFile(this, "music.mp3");
  song.loop();
  colorMode(HSB,360,100,100);
  size(600,600);
}

void draw(){
    background(0);
    stroke(s,20,20);
    fill(s,50,50);
    strokeWeight(5);
    translate(width/2,height/2);
    if (mousePressed &&(mouseButton) == LEFT){
     scale(map(mouseX,0,width/2,0.5,2));
    }
    for (float n = 0.5; n<5 ; n = 1.8*(n+0.5)-1){
      beginShape();
      noiseMax = map(mouseX, 0, width/2, 0 ,25);
      for(float a = 0; a<TWO_PI; a+=0.01){
         float xoff = map(cos(a + spin), -1, 1, 0, noiseMax);
         float yoff = map(sin(a + spin), -1, 1, 0, noiseMax);
         r = map(noise(xoff, yoff, zoff), 0, 1, 50*n, 100*n);
         x = r*cos(a);
         y = r*sin(a);
          vertex(x,y);
      if (n==0.5){
        line(0, 0, x, y);
      }
      if (n>0.5){
        noFill();       
      }
    }
    endShape(CLOSE);
    if (k == 300){
       s += 40;
       if (s == 360){
         s = 0;
       }
       k = 0;
     }  
    stroke(s,30*1.5*n,30*1.5*n);
    zoff += 0.05;
    if (mousePressed &&(mouseButton) == RIGHT){     
       spin += 0.01;
     }
     else{
      spin += 0.005; 
     }
    k++;
    }
}
