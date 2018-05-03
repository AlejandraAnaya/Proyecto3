
class Personaje{
  int vida;
  int ataque;
  
Personaje(int vida_, int ataque_){
  vida = vida_;
  ataque = ataque_;
} 


void ojo(){
  image(ojoi,0,0,900,450);
}

void boca(){
  image(bocai,0,0,900,450); 
}

void oreja(){
image(orejai,0,0,900,450); 
}

void cerebro(){ 
image(cerebroi,0,0,900,450);
}
void mano(){
image(manoi,0,0,900,450); 
}

void nariz(){
image(narizi,0,0,900,450);
}
}