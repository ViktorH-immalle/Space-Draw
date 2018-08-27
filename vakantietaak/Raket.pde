PImage raket;

float x = 550;
float y = 730;
float imageRotation = 180;

int v = 0;

class Raket
{
  
 void Teken()
{ 

raket = loadImage("raket.png");
raket.resize(0,100);
image(raket, x, y); 
   
    if (keyPressed == true && key == 't')
    {   
       v = 1;
    } 
    
    if(v == 1)
    {
       y = y - 4; 
    }
    
    if(y <= -100)
    {
      exit();
    }
  }  
  
}
