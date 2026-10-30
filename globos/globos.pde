
class Globo
{
  float x, y,vx,vy, r,g,b;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
    r = random(0, 255);
   g = random(0, 255);
   b = random(0, 255);  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill(r,g,b);
      rectMode(CENTER);
      rect(x,y,80,100);
      imageMode(CENTER);
      image(cara,x,y, 70, 90);
      triangle(x,y+50,x-10,y+60,x+10,y+60);
  }
  
}

ArrayList<Globo> globos;

PImage cara;
void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();
  cara = loadImage("bluefish.png");
}

void draw()
{
  background(50,50,150);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
