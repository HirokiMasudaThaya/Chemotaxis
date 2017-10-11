Walker bob;
Walker[] aBunch;
void setup()
{
  size(500,500);
  bob = new Walker();
  aBunch = new Walker[300];
  for(int i = 0 ;i < aBunch.length; i++)
  {
    aBunch[i] = new Walker();
  }
}

void draw()
{
  background(0);
  for(int i = 0 ;i < aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].walk();
  }
}

class Walker
{
  int myX, myY;
  Walker()
  {
    myX = myY = 250;
  }
  void walk()
  {
    if(mouseX>myX)
      myX = myX + (int)(Math.random()*5)-1;
    if(mouseX<myX)
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY>myY)
      myY = myY + (int)(Math.random()*5)-1;
    if(mouseY<myY)
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(myX,myY,10,10);
  }
}