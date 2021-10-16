int f;
int frameNumber;

void intro() {
  frameNumber = 45;
  introGIF[f].resize(width, height);
  image(introGIF[f], width/2, height/2);
   if(frameCount % 2 == 0) f = f+1;
   if (f == frameNumber) f = 0;
  
}
