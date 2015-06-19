//
float incremento = 0;

void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  
  stroke(random(255), random(255), random(255));
  for(int a = 0; a < 10; a = a + 1)
  {
   line(100 + incremento, 50 + a * incremento, 250 - incremento, 50 + a * incremento);
    stroke(random(255), random(255), random(255)); 
  }
  incremento = incremento + 0.01;
  if (incremento > 50)
  {
   incremento = 0; 
  }
  
  stroke(random(255), random(255), random(255));
  for(int a = 400; a < 10; a = a - 1)
  {
   line(100 - incremento, 50 + a * incremento, 250 + incremento, 50 + a * incremento);
    stroke(random(255), random(255), random(255)); 
  }
  incremento = incremento + 1;
  if (incremento > 50)
  {
   incremento = 0; 
  }
}

void keyPressed()
{
  
}

