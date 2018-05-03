import processing.sound.*; //sonido


Personaje ojo; 
Personaje boca;
Personaje oreja; 
Personaje mano;
Personaje cerebro;
Personaje nariz; 


Personaje j1;
Personaje j2;

boolean sel1= false, sel2 = false; 
int x, y, r; 
int pant;
int display1, display2;
int turno =1 ;

PImage titulo, imagen, inicio, batalla, ganador, seleccion, personajes, letrero, boom; 
PImage ojoi, bocai, orejai, cerebroi, manoi, narizi; 

PImage gan1, gan2, gan3, gan4, gan5, gan6;

PFont letra1; 

SoundFile bala1, bala2, ukulele, intro, bat, gand;


void setup() {

  size(1000, 500);
  letra1 = createFont("Comic Book Bold", 20);


  ojo = new Personaje(500, 200);
  boca = new Personaje (600, 300);
  oreja = new Personaje (600, 200);
  mano = new Personaje (400, 200);
  nariz = new Personaje(400, 200);
  cerebro = new Personaje (700, 300); 

  titulo = loadImage("titulo.png");
  batalla = loadImage("city3.jpg");
  ganador = loadImage("fondo.jpg");
  inicio = loadImage("wham2.jpg"); 
  seleccion = loadImage("sele.jpg");
  personajes = loadImage("pers.png");
  letrero = loadImage("letrero.png");
  boom = loadImage("bo.png");
  


  ojoi = loadImage("o1.png"); 
  bocai = loadImage("b1.png");
  orejai = loadImage("or1.png"); 
  cerebroi = loadImage("c1.png");
  manoi = loadImage("m1.png");
  narizi = loadImage("n1.png");


  gan1 = loadImage("gan1.jpg");
  gan2 = loadImage("gan2.jpg");
  gan3 = loadImage("gan3.jpg");
  gan4 = loadImage("gan4.jpg");
  gan5 = loadImage("gan5.jpg");
  gan6 = loadImage("gan6.jpg");

  bala1 = new SoundFile(this, "f.wav");
  bala1.amp(0.05);

  bala2 = new SoundFile(this, "g.wav");
  bala2.amp(0.05);


  ukulele = new SoundFile(this, "a.mp3");
  ukulele.amp(0.2); 

  intro = new SoundFile (this, "intro.mp3");
  intro.play(); 
  intro.amp(0.05);

  bat = new SoundFile (this, "bat.mp3");
  bat.amp(0.01);
  
  gand = new SoundFile(this,"gand.mp3");
  gand.amp(0.01);
}


void draw() {

  pantallas(); 
  //println(sel1 + "," + sel2 + "," + turno + "," + pant);
  //println(pant);
  println(mouseX + "," + mouseY);

  textAlign(CENTER, CENTER); 
  textSize(16);
}

void mouseReleased() {


  if (pant == 2) {
    ataque();
  }

  //j2 

  if ((pant == 1 && sel1 == true && sel2==false)) {
    if ((mouseX>= 30) && (mouseX<= 380) && (mouseY> -177) && (mouseY<216)) {//rojo
      j2 = ojo;
      sel2 = true;
      display2=1;
    }
  }

  if ((pant == 1 && sel1 == true && sel2==false)) {
    if ((mouseX>= 30) && (mouseX< 380) && (mouseY> 300) && (mouseY<=475)) { //naranja
      j2 = boca;
      sel2 = true;
      display2=2;
    }
  }

  if ((pant == 1 && sel1 == true && sel2==false)) {
    if ( (mouseX>= 384) && (mouseX< 677) && (mouseY> 275) && (mouseY<=475)) { //azul
      j2 = oreja;
      sel2 = true;
      display2=3;
    }
  }


  if ((pant == 1 && sel1 == true && sel2==false)) {
    if ( (mouseX>= 408) && (mouseX< 762) && (mouseY> 30) && (mouseY<=281)) { //amarillo 
      j2 = cerebro;
      sel2 = true;
      display2=4;
    }
  }


  if ((pant == 1 && sel1 == true && sel2==false)) {
    if ( (mouseX>= 727) && (mouseX<=973) && (mouseY>=308) && (mouseY<=475)) { //rosa
      j2 = mano;
      sel2 = true;
      display2= 5;
    }
  }


  if ((pant == 1 && sel1 == true && sel2==false)) {
    if ( (mouseX>= 797) && (mouseX<= 973) && (mouseY> 30) && (mouseY<=291)) { //verde
      j2 = nariz;
      sel2 = true;
      display2=6;
    }
  }



  //j1


  if (pant == 1 && sel1 == false && sel2 == false) {
    if ((mouseX>= 30) && (mouseX<= 380) && (mouseY> -177) && (mouseY<216)) { //rojo

      j1 = ojo;
      sel1 = true;
      display1 =1;
      //sel2 = false;
    }
  }

  if (pant == 1 && sel1 == false && sel2 == false) {
    if ((mouseX>= 30) && (mouseX< 380) && (mouseY> 300) && (mouseY<=475)) { //naranja

      j1 = boca;
      sel1 = true;
      display1 = 2;
      //sel2 = false;
    }
  }


  if (pant == 1 && sel1 == false && sel2 == false) {
    if ( (mouseX>= 384) && (mouseX< 677) && (mouseY> 275) && (mouseY<=475)) { //azul

      j1 = oreja;
      sel1 = true;
      display1 = 3;
      //sel2 = false;
    }
  }


  if (pant == 1 && sel1 == false && sel2 == false) {
    if ( (mouseX>= 408) && (mouseX< 762) && (mouseY> 30) && (mouseY<=281)) { //amarillo 

      j1 = cerebro;
      sel1 = true;
      display1 =4;
      //sel2 = false;
      
    }
  }


  if (pant == 1 && sel1 == false && sel2 == false) {
    if ( (mouseX>= 727) && (mouseX<=973) && (mouseY>=308) && (mouseY<=475)) { //rosa

      j1 = mano;
      sel1 = true;
      display1 = 5;
      //sel2 = false;
    }
  }


  if (pant == 1 && sel1 == false && sel2 == false) {
    if ( (mouseX>= 797) && (mouseX<= 973) && (mouseY> 30) && (mouseY<=291)) { //verde

      j1 = nariz;
      sel1 = true;
      display1 = 6;
      //sel2 = false;
    }
  }


  if (pant <1) {
    pant++;
   // gand.stop();
    ukulele.play();
    
  }

  if ((sel1 == true) && (sel2 == true) && (pant < 2)) {
    pant = 2;
    intro.stop();
    bat.play();
  }


  if (turno == 2 && pant ==2) {
    turno = 1 ;
  } else {
    turno = 2;
  }
}