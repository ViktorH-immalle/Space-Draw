class Maan
{
  int x;
  int y;
  int diameter;
  
  
  public Maan(int x, int y, int diameter)
  { 
   this.x = x;
   this.y = y;
   this.diameter = diameter;
   
   
   fill(random(255), random(255), random(255));
   
   ellipse(x,y,diameter,diameter);
   stroke(10);
   ellipse(x,y,diameter+20,diameter+10);
  }
  
}
