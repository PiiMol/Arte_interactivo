//Arte óptico



//Hago un array que contenga cada uno de los colores
color[] colores = {color(73, 145, 79), color(134,175,64), color(230,219,65), color(217,169,37), color(184,71,38), color(166,40,41),color(130,29,25),color(89,8,40),color(77,38,70),color(38,48,96),color(29,32,97),color(2,64,62),color(33,127,90),color(44,147,92)};
int numCirculos = 14; // Cantidad de circulos
float centro = 20; // El tamaño de los circulos
float maxTam = 350; // El tamaño de circulo central + establece la base para los otros
float grosor = 20; //Grosor de los circulos
float incremento = 1;




void setup() {
  size(800, 400); //Establecemos tamaño de lienzo
  background(242,239,222);

 
}

void draw() {
  

  // Realizo un for para dibujar los circulos
  //En este float calculo el tamaño que incrementarán los circulos
  //Realizamos una división: en el numerador primero calculo el número máximo 
  //menos el circulo central y luego, lo divido por la cantidad de circulos
  float tamano = (maxTam - centro) / (numCirculos - 1);
  for (int i = 0; i < numCirculos; i++) {
    float size = centro + i * tamano; //en cada iteración garantiza que cada circulo sea más grande que el anterior
    color colorCirculo = colores[i % colores.length]; //selecciona el color para cada elemento
    
    noFill();
    stroke(colorCirculo); //Establezco el color 
    strokeWeight(grosor); //Establezco el grosor
  
    ellipse(width/2, height/2, size, size); //Dibujo el circulo
  }
  
  
  
  // Dibuja el círculo central
  fill(colores[0]);
  noStroke();
  ellipse(width/2, height/2, centro, centro);
}
//por fuera del DRAW
void mousePressed() {
  // Si presiono el mouse, realiza un random en los colores
  for (int i = 0; i < colores.length; i++) {
    colores[i] = color(random(255), random(255), random(255));
  }
}




void keyPressed() {
  if (key == 'D' || key == 'd') {
    maxTam += incremento;
    //Si presiono la tecla 'D' o 'd' aumentará el tamaño de los circulos
  
}
}
void keyReleased() {
  if (key == 'D' || key == 'd') {
    maxTam = 350;
   background(242,239,222);
    //En su defecto, si dejo de presionar la tecla 'D' o 'd' se reiniciarán los valores
    // de tamaño de los mismos.
  }
}
