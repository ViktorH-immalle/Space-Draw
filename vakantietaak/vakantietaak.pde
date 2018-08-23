PImage startscreen;
PImage S;
PFont title;

Maan[] m = new Maan[5];
Ster[] s = new Ster[5];
int screen;

void setup()
{
  size(1200, 900);
  
  screen = 1;
  
  frameRate(50);
  startscreen = loadImage("space.jpg");
  image(startscreen, 0, 0, 1200, 900);
  
  title = createFont("font", 2000, true);
}

void draw()
{
 if(screen == 1)
 {
   textAlign(CENTER);
   textSize(24);
   text("Press s to start the game.", 600, 750);
   textSize(22);
   text("Press i for instructions.", 600, 780);
   
   if(key == 's' && keyPressed == true)
   {
     screen = 2;
     background(0,0,0);
   }
   if(key == 'i' && keyPressed == true)
   {
     screen = 3;
   }
   
 }
 
 if(screen == 2)
 {
   
   
   
   if(key == 'i' && keyPressed == true)
   {
    screen = 3; 
   }
   
   if(mousePressed && (mouseButton == LEFT))
   {
     frameRate(10);
     m[0] = new Maan(mouseX, mouseY, int(random(50, 100)));
     
   }
   
   if(mousePressed && (mouseButton == RIGHT) )
   {
     fill(232,221,25);
     s[0] = new Ster(mouseX, mouseY, 10);
   }
     
/* if(screen == 3);
 {
   background(255, 255, 255);
   
   textSize(28);
   text("This are the instructions:", 600, 100);
   textSize(25);
   
   S = loadImage("s.jpg");
   image(S, 730, 800, 80, 80);
   
   fill(0,0,0);
   text("Press", 700, 850);
   text("to go back to the game", 950, 850);
   
    if(key == 's' && keyPressed == true)
   {
     screen = 2;
   }
 }*/
}
}
