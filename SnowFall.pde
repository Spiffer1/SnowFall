
private float[] flakeX;
private float[] flakeY;

void settings()
{
  size(500, 500);
}

void setup() 
{
  flakeX = new float[100];
  flakeY = new float[100];
  for (int i = 0; i < 100; i++)
  {
    flakeX[i] = random(500);
    flakeY[i] = random(500);
  }
}

void draw() 
{
  background(0);
  for (int i = 0; i < 100; i++) 
  {
    flakeY[i]++;
    if (flakeY[i] > height )
    {
      flakeY[i] = 0;
      flakeX[i] = random(500);
    }
    ellipse(flakeX[i], flakeY[i], 5, 5);
  }
}