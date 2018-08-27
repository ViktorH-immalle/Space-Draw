PImage startscreen;
PImage S;
PFont title;

Maan[] m = new Maan[1];
Ster[] s = new Ster[1];
Raket r = new Raket();
Basis b = new Basis();
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
   textSize(35);
   text("Press 's' to start the game.", 600, 750);
   textSize(27);
   text("Instructions:", 95, 75);
   textSize(23);
   text("* Press 'LEFT' click to draw a moon.", 200, 125);
   text("* Press 'RIGHT' click to draw a star.", 200, 175);
   text("* Press 't' to deploy.", 115, 225);
    text("* Press 'c' to clear your space.", 170, 275);
   text("(Hint: deploy when your space is finished!)", 250, 325);
   
   
   if(key == 's' && keyPressed == true)
   {
     screen = 2;
     background(0,0,0);
   }
   
 }
 
 if(screen == 2)
 {
  
   
   if(keyPressed == true && key == 'i')
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
   
   if(keyPressed == true && key == 'c')
   {
     clear();
   }
   
     r.Teken();
   
     b.tekenBasis();
   

}
}
