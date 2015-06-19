boolean rebote()
{
  return intersects(bolaPosX, bolaPosY, bolaTam, rectPosX, rectPosY, rectWidth, rectHeight);
}

boolean intersects(float circuloX, float circuloY, float rad, float rectX, float rectY, float rectW, float rectH)
{
  float circleDistanceX = abs(circuloX - rectX);
  float circleDistanceY = abs(circuloY - rectY);

  if (circleDistanceX > (rectW + rad/2.0)) { 
    return false;
  }
  if (circleDistanceY > (rectH + rad/2.0)) { 
    return false;
  }

  if (circleDistanceX <= (rectW/2.0)) { 
    return true;
  } 
  if (circleDistanceY <= (rectH/2.0)) { 
    return true;
  }

  float cornerDistance_sq = pow((circleDistanceX - rectW/2.0), 2) +
                            pow((circleDistanceY - rectH/2.0), 2);

  return (cornerDistance_sq <= (pow(rad/2.0, 2)));
}


//Circulo

//posicion de la bola
float bolaPosX = 300;
float bolaPosY = 300;

//velocidad Bola
float bolaVelX = 2;
float bolaVelY = 5;

//tamanos 
float bolaTam  = 50;

//Rectangulo

//posicion del rectangulo
float rectPosX = 300;
float rectPosY = 50;

//tamano del rectangulo
float rectWidth = 100;
float rectHeight = 20;

int numRebotes = 0;
void setup() {
  size(500, 500);
}


void draw() {
  //Fondo blanco
  // background(255);
  rectMode(CORNER);
  fill(255, 255, 255, 10);
  rect(0, 0, width, height);

  //dibujar ellipse con centro (bolaPosX, bolaPosY) 
  //con tamano (bolaWidth, bolaHeight)
  noStroke();
  fill(0);
  ellipse(bolaPosX, bolaPosY, bolaTam, bolaTam);


  //Dibujar el Rectangulo
  //posicion esquina superior izquierda (rectPosX, rectPosY)
  rectPosX = mouseX;
  rect(rectPosX, rectPosY, rectWidth, rectHeight);

  //actualizar las posiciones de la bola
  bolaPosX = bolaPosX + bolaVelX;
  bolaPosY = bolaPosY + bolaVelY;


  //si reboto cambiar la velocidad
  if (rebote() == true) {
    bolaVelX  = -bolaVelX + 1;
    bolaVelY  = -bolaVelY + 1;
    
    numRebotes = numRebotes + 1;
  }
  
  text(numRebotes, 100, 50);

  //Rebotar con las paredes
  if (bolaPosX > width){
    bolaVelX  = -bolaVelX;
  }

  if (bolaPosY > height){
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosY < 0){
    bolaVelY  = -bolaVelY;
  }
  
  if (bolaPosX < 0){
    bolaVelX  = -bolaVelX;
  }
}

void keyPressed()
  {
   if(key == ' ')
    rectWidth = rectWidth + 100;
  } 





