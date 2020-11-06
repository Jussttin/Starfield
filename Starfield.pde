Particle [] light;
OddballParticle [] fireworks;
double position = Math.random()*1001;
double high = 950;
void setup()
{
  size(1000, 1000);
  background(0);
  light = new Particle[1000];
  fireworks = new OddballParticle [1];
  for(int i = 0; i < light.length; i++)
{
  light[i] = new Particle();
}
  for(int i = 0; i < fireworks.length; i++)
{
  fireworks[i] = new OddballParticle();
}
}
void draw()
{
  background(0);
for(int i = 0; i < fireworks.length; i++)
{
  fireworks[i].show();
  fireworks[i].move();
}
if(high <= 500)
{
for(int i = 0; i < light.length; i++)
{
  light[i].show();
  light[i].move();
}
}
}
class Particle
{
   public double myX, myY, mySpeed, myAngle;
   int myColor, x, y;
  Particle()
  {
    myX = position+10;
    myY = 500;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
{
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
}
  void show()
{
  ellipse((float)myX,(float)myY,5,5);
  fill(myColor);
}
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle()
  {
    mySpeed = 10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    high = high - mySpeed;
    if(high <= 500)
    {
    high = high + mySpeed/2;
    }
  }
  void show()
  {
    rect((float)position, (float)high, 20,50);
    fill(255, 0, 0);
  }
}
