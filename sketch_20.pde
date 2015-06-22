PImage img [];
int indiceImagen = 0;

void setup()
{
  size(500, 500);
  
  img = new PImage[33];
  
  for(int i = 0; i < 33; i++)
  {
    println(i);
    if(i < 10)
    {
    img[i] = loadImage("data/frame00"+i+".gif");
    }else{
      img[i] = loadImage("data/frame0"+i+".gif");
    }
  }
  
  frameRate(10);
}

void draw()
{
  background(0);
  
  image(img[indiceImagen],  0, 0);
  
  indiceImagen = indiceImagen + 1;
  if(indiceImagen > 33 - 1)
  {
    indiceImagen = 0;
  }
}
