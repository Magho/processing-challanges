float a = 0.0;
ArrayList <Box> sponge;
Box b ;
void setup () {
  size(800, 800, P3D);
  sponge  = new ArrayList<Box>();
  b =new Box (0,0,0,400);
  sponge.add(b);
}
void draw () {
  background(51);
  stroke(255);
  noFill();
  lights();
  
  translate(width/2, height/2);
  rotateX(a);
  rotateY(a * 0.4);
  rotateY(a * 0.1);
  for (Box b : sponge) {
    b.show();
  }
  a+=0.01;
}

void mousePressed () {
  
  ArrayList<Box> next = new ArrayList<Box>();

  for (Box b : sponge) {
    ArrayList <Box> newBoxes = b.generate();
    next.addAll(newBoxes);
  }
  sponge = next;
}
