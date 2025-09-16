void setup() {
  size(200, 200);  //feel free to change the big
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  background(50,50,50); 
  for(int y =0 ; y<= 200 ; y+=20) {
  for(int x =0 ; x<= 200 ; x+=20){
    coolscale(x,y);
}
}
  ellipse(mouseX,mouseY,10,10);//weird button thing
  fill(((float)Math.random()*255),((float)Math.random()*255), ((float)Math.random()*255) );
  ellipse(mouseX,mouseY,4,4);
  int sig = 90;
  int gis = 90;
  if (mousePressed && mouseButton == LEFT) {
    fill(((float)Math.random()*255),((float)Math.random()*255),((float)Math.random()*255)); // random
  } else if (mousePressed && mouseButton == RIGHT) {
    fill(255); // white
  } else {
    fill(0); //black
  }
  if((mouseX <= sig+10 && mouseX >= sig-10)&&(mouseY <= gis+10 && mouseY >= gis-10)){
sig=(int)(Math.random()*200);
gis=(int)(Math.random()*200);
}
  rect(((float)sig+Math.random()*10),((float) gis+Math.random()*10), 20, 20);//rectangle
}
void coolscale(int x, int y) {
int big=1;
int shade =0;
while(big<20){
  fill(255,255,255);
 stroke(mouseX/5+100-shade,mouseY/5+100-shade,255-mouseX/5-shade);//shading
bezier((x-10)+big,(y-10)+big,((mouseX/100)+x+20),((mouseY/100)+y-20),((mouseX/100)+x+20),((mouseY/100)+y+20),(x+10)-big,(y+10)-big);//scales
big++;//changing shape
shade+=10;//changing color
}
}


