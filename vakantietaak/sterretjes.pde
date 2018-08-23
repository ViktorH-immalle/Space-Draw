class Ster
{
 int x;
 int y;
 
 int diameter;
 
 public Ster(int x, int y, int diameter)
 {
   this.x = x;
   this.y = y;
   this.diameter = diameter;
   
   diameter = 10;
   fill(232,221,25);
   ellipse(x,y,diameter, diameter);
 }
}
