//BASUALDO JULIA - COMISION 3

String estado = "inicio";
int cuenta;
boolean inicio=false;
PFont MVBoli;

PImage logo, imagen1, imagen2, imagen3, imagen4, imagen5, reinicio;
float posXImg1, posYImg2, posXImg3, posYImg4, posXImg5;
float posXrect1, posYrect2, posYrect3, posXrect4, posXrect5;
float posYtext1, posXtext2, posYtext3, posXtext4, posYtext5;

void setup() {
  size(640, 480);
  background(255);
  cuenta = 0;
  estado = "inicio";
  MVBoli = loadFont ("MVBoli.vlw");
  textFont(MVBoli);
  textAlign(CENTER);
  textSize(22);

  logo= loadImage ("logo.jpg");
  imagen1= loadImage ("imagen1.jpg");
  imagen2= loadImage ("imagen2.jpg");
  imagen3= loadImage ("imagen3.jpg");
  imagen4= loadImage ("imagen4.jpg");
  imagen5= loadImage ("imagen5.jpg");
  reinicio= loadImage ("reinicio.png");
}

void draw () {
  cuenta++;

  if (estado.equals("inicio")) {
    background (255);
    fill (206, 147, 216);
    stroke(0);
    circle (320, 240, 250);
    image(logo, 215, 160, 220, 140);
    cuenta = 0;

    posXImg1 = 640;
    posXrect1 = 640;
    posYtext1 = -40;

    posYImg2 = -480;
    posYrect2 = 480;
    posXtext2 = -250;

    posXImg3 = -640;
    posYrect3 = -240;
    posYtext3 = 530;

    posYImg4 = 480;
    posXrect4 = -540;
    posXtext4 = -250;

    posXImg5 = -640;
    posXrect5 = 640;
    posYtext5 = -40;
  } else if (estado.equals("diapo1")) {
    image(imagen1, posXImg1, 0, 640, 480);
    posXImg1 -= 20 ;
    if (posXImg1 <= 1) {
      posXImg1 = 0;
    }
    if (posXImg1 == 0) {
      noStroke ();
      fill (255, 150);
      rect (posXrect1, 340, 540, 90);
      posXrect1 -= 20;
    }
    if (posXrect1 <= 51 ) {
      posXrect1 = 50;
    }
    if (posXImg1 == 0) {
      fill (0);
      text ("VENERIS REBELLIO \n fue realizado en el marco de TDM1, \n en el Observatorio de La Plata.", 320, posYtext1);
      posYtext1 += 15;
    }
    if (posYtext1 >= 364) {
      posYtext1 = 365;
    }
  } else if (estado.equals("diapo2")) {
    image(imagen2, 0, posYImg2, 640, 480);
    posYImg2 += 20 ;
    if (posYImg2 >= -1) {
      posYImg2 = 0;
    }
    if (posYImg2 == 0) {
      noStroke ();
      fill (255, 150);
      rect (50, posYrect2, 540, 135);
      posYrect2 -= 20;
    }
    if (posYrect2 <= 51 ) {
      posYrect2 = 50;
    }
    if (posYImg2 == 0) {
      fill (0);
      text ("Es un videojuego realizado en el marco de TDM1 \n la instalación tiene una parte analogica y otra digital  \n era apta para todo público  \n .", posXtext2, 80);
      posXtext2 += 15;
    }
    if (posXtext2 >= 319) {
      posXtext2 = 320;
    }
  } else if (estado.equals("diapo3")) {
    image(imagen3, posXImg3, 0, 640, 480);
    posXImg3 += 20 ;
    if (posXImg3 >= -1) {
      posXImg3 = 0;
    }
    if (posXImg3 == 0) {
      noStroke ();
      fill (255, 150);
      rect (50, posYrect3, 540, 180);
      posYrect3 += 20;
    }
    if (posYrect3 >= 49 ) {
      posYrect3 = 50;
    }
    if (posXImg3 == 0) {
      fill (0);
      text ("El videojuego consistia en salvar a Venus. \n Atravesando el mar con obstaculos \n los jugadores debian pegarle a la mano gigante para avanzar. \n Dos niveles de dificultad media, \n el Aventura, Diversion, Arte, \n ", 320, posYtext3);
      posYtext3 -= 15;
    }
    if (posYtext3 <= 81) {
      posYtext3 = 80;
    }
  } else if (estado.equals("diapo4")) {
    image(imagen4, 0, posYImg4, 640, 480);
    posYImg4 -= 20 ;
    if (posYImg4 <= 1) {
      posYImg4 = 0;
    }
    if (posYImg4 == 0) {
      noStroke ();
      fill (255, 150);
      rect (posXrect4, 50, 540, 180);
      posXrect4 += 20;
    }
    if (posXrect4 >= 49 ) {
      posXrect4 = 50;
    }
    if (posYImg4 == 0) {
      fill (0);
      text ("Los personajes fueron dibujados por los estudiantes \n la programacion del mismo tambien, \n al igual que los colores, el logo y la marca \n LLevo 4 meses realizarlo, muchas horas, y correcciones \n ", posXtext4, 80);
      posXtext4 += 15;
    }
    if (posXtext4 >= 319) {
      posXtext4 = 320;
    }
  } else if (estado.equals("diapo5")) {
    image(imagen5, posXImg5, 0, 640, 480);
    posXImg5 += 20 ;
    if (posXImg5 >= -1) {
      posXImg5 = 0;
    }
    if (posXImg5 == 0) {
      noStroke ();
      fill (255, 150);
      rect (posXrect5, 180, 540, 120);
      posXrect5 -= 20;
    }
    if (posXrect5 <= 51 ) {
      posXrect5 = 50;
    }
    if (posXImg5 == 0) {
      fill (0);
      text ("Su vistosa instalacion \n atrajo muchos jugadores \n que intentaron surfear  \n y ganar los premios.", 320, posYtext5);
      posYtext5 += 15;
    }
    if (posYtext5 >= 199) {
      posYtext5 = 200;
    }
  }
  if (estado.equals("reinicio")) {
    image(imagen5, posXImg5, 0, 640, 480);
    fill (255, 50);
    stroke(170);
    rect (160, 165, 320, 160);
    image(reinicio, 260, 175, 100, 130);
  }
  if (cuenta > 0 && cuenta <150) {
    estado = "diapo1";
  } else if (cuenta >=150 && cuenta < 350) {
    estado = "diapo2";
  } else if (cuenta >=350 && cuenta < 600) {
    estado = "diapo3";
  } else if (cuenta >=600 && cuenta < 900) {
    estado = "diapo4";
  } else if (cuenta >=900 && cuenta < 1150) {
    estado = "diapo5";
  } else if (cuenta >=1150) {
    estado = "reinicio";
  }
}

void mousePressed () {
  float dInicio = dist(mouseX, mouseY, 320, 240);
  float rInicio = 250/2;
  if (dInicio<rInicio) {
    inicio = true;
    estado = "diapo1";
  }
  if (cuenta >= 1150 && mouseX >160 && mouseY>160 && mouseX <480 && mouseY <320) {
    cuenta = 0;
    estado = "inicio";
    inicio  = false;
  }
}
