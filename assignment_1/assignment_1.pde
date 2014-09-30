//modified from code on Lynda.com

color[] five = {#FFFFCD, #CC5C54, #F69162, #85A562, #7AB5DB};
color[] palette = five;
int s = 50;
float a,b,c;

void setup()
{
  size(600, 600);
  frameRate(14);
  background(palette[0]);
  
  for(int x = 0; x < width; x += s)//draw the background at the beginning
  {
    for(int y = 0; y < height; y += s) 
    {
      fill(palette[int(random(1, 5))]);
      rect(x, y, s, s);
    }
  }
}

void draw()
{
  fill(palette[int(random(1, 5))]);//update the background
  int x = int(random(width/s))*s;
  int y = int(random(height/s))*s;
  rect(x, y, s, s);
  
  a=random(0,255);//draw lines and dots with the moving of mouse
  b=random(0,255);
  c=random(0,255);
  fill(a, b, c);
  ellipse(mouseX, mouseY, 10, 10);
  fill(120);
  ellipse(pmouseX, pmouseY, 10, 10);
  stroke(120);
  line(mouseX, mouseY, pmouseX, pmouseY);
}

void mousePressed()
{
  background(palette[0]);//go back to initial background 
  for(int x = 0; x < width; x += s)
  {
    for(int y = 0; y < height; y += s) 
    {
      fill(palette[int(random(1, 5))]);
      rect(x, y, s, s);
    }
  }
}
