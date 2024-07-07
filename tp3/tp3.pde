//COMISION 3
//BASUALDO JULIA
//https://youtu.be/OjMouq9eNXs


PImage arteoptico;
int cant = 11;

String colores = "coloresprincipales";
color relleno, fondo, base;
color violetaO, rosita, verde, azul, violeta1, cyan, magenta, verdeO, naranja, rojo, negro, amarillo;

void setup() {
  size(800, 400);
  background(255);
  arteoptico = loadImage("imagenarteoptico.jpg");

  naranja = color(252, 170, 0);
  violetaO = color(141, 1, 87, 100);
  rosita = color(202, 1, 117);

  verde = color(1, 252, 19);
  violeta1 = color(122, 1, 126);
  azul = color(95, 1, 217);

  cyan = color(1, 252, 206);
  verdeO = color(7, 126, 1);
  magenta = color(217, 1, 210);

  amarillo = color(254, 255, 1);
  rojo = color(255, 0, 0);
  negro = color(0);

  relleno = naranja;
  fondo = violetaO;
  base = rosita;
}

void draw() {
  image(arteoptico, 0, 0, 400, 400);

  if (colores.equals("coloresprincipales")) {
    relleno = naranja;
    fondo = violetaO;
    base = rosita;
  } else if (colores.equals("colores1")) {
    relleno = verde;
    fondo = violeta1;
    base = azul;
  } else if (colores.equals("colores2")) {
    relleno = cyan;
    fondo = negro;
    base = magenta;
  } else if (colores.equals("colores3")) {
    relleno = naranja;
    fondo = verdeO;
    base = rojo;
  }

  fondo();

  push();
  translate(600, 200);
  rotate(radians(45));

  for (int i = 0; i < 4; i++) {
    push();
    rotate(radians(90 * i));
    cuadrante();
    pop();
  }
  pop();
}

void fondo() {
  push();
  rectMode(CENTER);
  noStroke();
  fill(fondo);
  rect(600, 200, 344, 344);
  pop();
}
//

void cuadrante() {
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      float ancho = map(x, 0, cant - 1, 24, 6);
      float alto = map(y, 0, cant - 1, 24, 6);
      float posX = map(x, 0, cant - 1, 0, 265) - (x * (x + 1)) / 2;
      float posY = map(y, 0, cant - 1, 0, 265) - (y * (y + 1)) / 2;

      if ((x + y) < 11) {
        float d = dist(mouseX - 400, mouseY, posX, posY);
        float tono = d * 255 / dist(400, 0, 600, 200);

        rectMode(CENTER);
        stroke(166, 132, 253);
        strokeWeight(3);

        fill(base);
        rect(posX, posY, ancho, alto);

        fill(relleno, tono);
        rect(posX, posY, ancho, alto);
      }
    }
  }
}

void mouseClicked() {
  if (mouseX > 400 && mouseY > 0 && mouseX < 800 && mouseY < 400) {
    if (colores.equals("coloresprincipales")) {
      colores = "colores1";
    } else if (colores.equals("colores1")) {
      colores = "colores2";
    } else if (colores.equals("colores2")) {
      colores = "colores3";
    } else if (colores.equals("colores3")) {
      colores = "coloresprincipales";
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    colores = "coloresprincipales";
  }
}
