Clouding[] cloud = new Clouding [10];
Raining[] rain = new Raining [500];
Thundering[] thunder = new Thundering[4];
PImage photo;
PImage photo01;
PImage photo02;
import processing.sound.*;
SoundFile song;
int q = int(random(1200,1300));
int r = 0;

void setup(){   
  size(500,500);
  photo = loadImage("rain background.png");
  photo01=loadImage("cloud.png");
  photo02=loadImage("thunder.png");
  song = new SoundFile(this, "sound.mp3");
  song.loop();
  for (int i = 0; i < rain.length; i ++){
    rain[i] = new Raining(); 
  }
  for (int n = 0; n < cloud.length; n ++){
    cloud[n] = new Clouding(); 
  } 
  for (int m = 0; m < thunder.length; m ++){
    thunder[m] = new Thundering(); 
  }  
}

void draw() {
  image(photo,0,0,width,height);
  for (int i = 0; i < rain.length; i ++){
    rain[i].fall();
    rain[i].show(); 
  }
  for (int m = 0; m < thunder.length; m ++){
    thunder[m].show();  
  }
  for (int n = 0; n < cloud.length; n ++){
    cloud[n].move();
    cloud[n].show();  
  }
}
