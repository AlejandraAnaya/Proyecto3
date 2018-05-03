
void pantallas() {

  switch(pant) {

  case 0:
    instrucciones();
    break; 

  case 1:
    personaje();
    break;

  case 2:
    batalla();
    break;

  case 3:
    ganador();
    break;
  }
}


void instrucciones() {

  image(inicio, 0, 0, 1000, 500);
  filter(BLUR, 5);

  textFont(letra1); 
  fill(255); 
  textSize(16);
  text("Un mundo en donde el arte está sometido a los parámetros visuales, auditivos y \n" +
    "gustativos, el resto de los sentidos perceptivos han sido marginados.\n " + 
    "Una lucha entre los sentidos populares y marginados \n " +
    "nos llevará a revelar la verdad y descubrir nuevas oportunidades \n" +
    "para la producción de discursos artísticos.", width/2, height/2+80);

  textSize(25);
  fill(232, 255, 23);
  text("Presiona clic para continuar", width/2, height/2+200); 

  image(titulo, 0, 0, 1000, 500);
}



void personaje() {

  image(seleccion, 0, 0, 1000, 500);
  image(personajes, 0, 0, 1000, 500); 
  strokeWeight(3);

  //1
  beginShape();
  if ( (mouseX>= 30) && (mouseX<= 380) && (mouseY> -177) && (mouseY<216)) { //rojo
    //stroke(0, 255, 0);   
    stroke(190, 255, 0);
    //image(imagen,0,0);
    stroke(255, 0, 0); 
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  } 
  //fill(255, 43, 0); 

  noFill();  
  vertex(29, 23);
  vertex(381, 23);
  vertex(352, 189);
  vertex(28, 283);
  vertex(29, 23);
  endShape();

  //2
  beginShape();
  // stroke(0);
  if ( (mouseX>= 30) && (mouseX< 380) && (mouseY> 300) && (mouseY<=475)) { //naranja 
    //stroke(0, 0, 255);
    //stroke(255, 153, 0);
    stroke(255, 0, 0); 
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  } 

  //fill(255, 153, 0); 
  noFill(); 
  vertex(28, 302);
  vertex(350, 209);
  vertex(339, 259);
  vertex(383, 368);
  vertex(297, 398);
  vertex(325, 460);
  vertex(322, 475);
  vertex(29, 475);
  vertex(28, 302);
  endShape();

  //3
  beginShape();
  //stroke(0);
  if ( (mouseX>= 408) && (mouseX< 762) && (mouseY> 30) && (mouseY<=281)) { //amarillo
    //stroke(0, 255, 255)
    // stroke(255, 243, 0);
    stroke(255, 0, 0); 
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  } 

  //fill(255, 243, 0); 
  noFill(); 
  vertex(405, 23);
  vertex(792, 23);
  vertex(744, 63);
  vertex(801, 281);
  vertex(365, 248);
  vertex(405, 23);
  endShape();

  //4
  beginShape();
  if ( (mouseX>= 384) && (mouseX< 677) && (mouseY> 275) && (mouseY<=475)) {//azul
    stroke(255, 0, 0); 
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  } 
 
  noFill(); 
  vertex(364, 269);
  vertex(704, 297);
  vertex(652, 477);
  vertex(341, 477);
  vertex(345, 459);
  vertex(322, 407);
  vertex(407, 378);
  vertex(364, 269);
  endShape();

  //5
  beginShape();
  if ( (mouseX>= 727) && (mouseX<=973) && (mouseY>=308) && (mouseY<=475)) {//rosa
    stroke(255, 0, 0); 
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  } 

  noFill(); 
  vertex(726, 298);
  vertex(973, 318);
  vertex(973, 475);
  vertex(677, 476);
  vertex(726, 298);
  endShape();

  //6
  beginShape();
  if ( (mouseX>= 797) && (mouseX<= 973) && (mouseY> 30) && (mouseY<=291)) { //verde
    stroke(255, 0, 0); 
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  } 
  
  noFill(); 
  vertex(825, 23);
  vertex(973, 24);
  vertex(974, 295);
  vertex(824, 282);
  vertex(768, 71);
  vertex(825, 23);
  endShape();

  image(letrero, 0, 0, 1000, 500);
}




void batalla() {


  image(batalla, 0, 0, 1000, 500);
  filter(BLUR, 3);

  textSize(30);
  fill(255);
  text("Es tu turno jugador:\r  " + turno, width/2, height/2-220);

  textSize(22);
  text("Vida: \r" + j1.vida, 150, 100);
  text("Vida: \r" + j2.vida, 820, 100);
  text("Ataque con clic", width/2, height/2 + 180);

  switch(display1) {
  case 1:
    ojo.ojo();
    fill(255); 
    textSize(30); 
    text("SUPEREYE", 150, 60);
    break;

  case 2: 
    boca.boca();
    fill(255); 
    textSize(30); 
    text("BORAT", 150, 60);
    break;

  case 3: 
    oreja.oreja();
    fill(255); 
    textSize(30); 
    text("ORETAN", 150, 60);
    break;

  case 4: 
    cerebro.cerebro();
    fill(255); 
    textSize(30); 
    text("CEREDUM", 150, 60);
    break;

  case 5: 
    mano.mano();
    fill(255); 
    textSize(30); 
    text("AQUAHAND", 150, 60);
    break;

  case 6: 
    nariz.nariz();
    fill(255); 
    textSize(30); 
    text("NASH", 150, 60);
    break;
  }

  switch(display2) {
  case 1:
    translate(600, 0);
    ojo.ojo();
    fill(255); 
    textSize(30); 
    text("SUPEREYE", 220, 60);
    break;

  case 2: 
    translate(600, 0);
    boca.boca();
    fill(255); 
    textSize(30); 
    text("BORAT", 220, 60);
    break;

  case 3: 
    translate(600, 0);
    oreja.oreja();
    fill(255); 
    textSize(30); 
    text("ORETAN", 220, 60);
    break;

  case 4: 
    translate(600, 0);
    cerebro.cerebro();
    fill(255); 
    textSize(30); 
    text("CEREDUM", 220, 60);
    break;

  case 5: 
    translate(600, 0);
    mano.mano();
    fill(255); 
    textSize(30); 
    text("AQUAHAND", 220, 60);
    break;

  case 6: 
    translate(600, 0);
    nariz.nariz();
    fill(255); 
    textSize(30); 
    text("NASH", 220, 60);
    break;
  }
}



void ataque() {

  if (turno == 1) {
    j2.vida -= j1.ataque;
    bala1.play();
    image(boom,50,200,186,215);
  }

  if (turno == 2) {
    j1.vida -= j2.ataque;
    bala2.play();
    image(boom,-500,200,186,215); 
  }

  if (j1.vida <= 0 || j2.vida <= 0)
  {
    pant = 3;
    gand.play();
  }
}




void ganador() {

  image(ganador, 0, 0, 1000, 500);

  fill(255, 200, 0);
  text("Presiona A para regresar", width/2, height/2+200);


  fill(255); 
  
  if ((j1.vida == 0) && (j2.vida > 0)) {
    textSize(30);
    text("¡JUGADOR 2 HAS GANADO!", width/2, height/2+100);
  } else {
    textSize(30);
    text("¡JUGADOR 1 HAS GANADO!", width/2, height/2+100);
  }

  switch(key) {

  case 'a' | 'A':
    pant = 0;
    gand.stop();
    intro.play();  
    

    key = 'y' | 'Y';
    break;
  }


  sel1 = false;
  sel2 = false;
  bat.stop();
 

  ojo = new Personaje(500, 200);
  boca = new Personaje (600, 300);
  oreja = new Personaje (600, 200);
  mano = new Personaje (400, 200);
  nariz = new Personaje(400, 200);
  cerebro = new Personaje (700, 300);
}