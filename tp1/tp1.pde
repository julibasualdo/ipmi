//variables - creacion
PImage mifoto;

void setup() {   //asignacion
  size (800, 400);
  mifoto = loadImage("mifoto.jpg");
}

void draw() { //uso
  background(200, 190, 180);
  image (mifoto, 0, 0, 400, 400 );
  noStroke();
  
  //PELO
  fill(225, 206, 154);
  ellipse(570, 120, 120, 135); 
  ellipse(590, 120, 120, 135); 
  
   //CARA
  fill(255, 224, 189);
  ellipse(580, 130, 110, 145); //cara

  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(560, 160, 565, 170, 595, 170, 600, 160);
  bezier(540, 95, 530, 85, 560, 85, 570, 95);
  bezier(600, 95, 590, 85, 620, 85, 630, 95);


  fill (255);
  ellipse(553, 113, 20, 10); // ojos
  ellipse(610, 113, 20, 10); // ojos

  fill(0, 128, 0);
  circle (554, 113, 10); // ojo verde
  circle (610, 113, 10);

  fill (0);
  circle (554, 113, 5);
  circle (610, 113, 5);

  //ANTEOJOS
  fill(0, 255, 255, 20);
  stroke (0);
  circle (554, 114, 40);
  circle (610, 114, 40);
  fill(255, 224, 189);
  line (573, 112, 590, 112);
  line (534, 113, 528, 104);
  line (630, 111, 633, 111);
// pomulos //ellipse(x, y, width, height);
 noStroke();
 fill (255, 182, 193);
ellipse (543, 142, 15, 15);
ellipse (616, 144, 15, 15);
//REMERA
 fill(150);
rect( 527, 225, 130, 221);

  // CUELLO
   fill(255, 224, 189);
  rect(555, 195, 45, 100); // Cuello

  // Triángulo para el torso triangle(x1, y1, x2, y2, x3, y3);
  fill(150);
  triangle(460, 238, 690, 240, 581, 600); //  torso hacia abajo
  //BRAZO
  noStroke();
  //ellipse(x, y, width, height);
  fill(150);
  ellipse(470, 335, 70, 200); //brazo
  ellipse(680, 335, 80, 200); //brazo
  ellipse(510, 265, 120, 100);
  ellipse(646, 270, 120, 100); //b. derecho


  // cuello de la chomba
  stroke (0);
  strokeWeight(2);
  rect (565, 228, 25, 80);
  triangle(554, 214, 578, 228, 543, 256);
  triangle(577, 227, 601, 221, 615, 255);

  //botones
  fill(190);
  circle (579, 240, 10);
  circle (579, 273, 10);



  //DETALLES REMERA
  line (442, 380, 447, 399);
  line (458, 381, 461, 399);
  line ( 475, 381, 476, 399);
  line (490, 382, 487, 399);
  line (571, 291, 585, 291);
  line (571, 300, 585, 300); 
  line (657, 385, 659, 399);
  line (671, 384, 671, 399);
  line (684, 384, 684, 399);
  line( 700, 384, 697, 399);
  line (647, 314, 645, 361);
  line (508, 310, 504, 345);


  
  
  println ("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
}
