Item item = new Item ();
Image image = new Image();
import processing.sound.*;
SoundFile song;
PImage[] photo = new PImage[4];
PImage[] views = new PImage[5];
float y ;
int n = 0;


void setup(){
  for (int m = 1; m<photo.length;m++){
    photo[m] = loadImage("item" + m +".png");  
  }
  for (int v = 1; v<views.length;v++){
    views[v] = loadImage("background0" + v +".png");  
  }
  song = new SoundFile(this, "music.mp3");
  song.loop();
  size(500,500);
  y = height;
}

void draw(){
  image.show();
  item.move();
  item.show();
}
  
