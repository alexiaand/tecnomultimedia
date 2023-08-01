/* Alexia Anduaga. 94020/9.
Video: https://drive.google.com/file/d/1IGfVTigNyzqJO0eCVqgd7oIf4GFk5ea5/view?usp=sharing 

Nuevo link: https://www.youtube.com/watch?v=A13hZqaygzs

int pantalla;

PImage[] ilustracion = new PImage[17];


void setup() {

  size(600, 600);
  
  for (int ilust = 0; ilust < 17; ilust++) {
    ilustracion[ilust] = loadImage("p" + ilust + ".jpg");
  }
  
}

void draw() {

  background(150);

  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  switch(pantalla) {

  case 0:
  
    image(ilustracion[0], 0, 0);
   
    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "Comenzar", 84, 52, 43 );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "Créditos", 84, 52, 43 );
      }
    }
    
    break;

  case 1:
  
    image(ilustracion[1], 0, 0);
    
    fill( 255, 150 );
    rect( 10, 12, 580, 200);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "En una remota y sombría finca conocida como Cumbres Borrascosas \n ubicada en los inhóspitos páramos de Yorkshire, se desarrolla una \n historia llena de pasiones desenfrenadas y oscuros secretos. \n El señor Earnshaw, dueño de la finca, decide adoptar a un joven \n huérfano llamado Heathcliff en su hogar junto a sus dos hijos, \n Hindley y Catherine.", 20, 110 );

    break;
    
  case 2:
  
    image(ilustracion[2], 0, 0);

    fill( 255, 150 );
    rect( 5, 12, 594, 285);
    textAlign( LEFT, CENTER );
    textSize( 20 );
    fill( 0 );
    text( "Desde el principio, Heathcliff despierta curiosidad y desconfianza en los \n demás. Su relación con Hindley se torna hostil. Heathcliff rápidamente \n establece una relación especial con Catherine. A pesar de sus \ndiferencias sociales y del tormentoso entorno en el que crecen, su \namistad se transforma en un amor profundo y apasionado. Sin embargo, \ncuando Catherine conoce a Edgar Linton, un joven refinado y de buena \nposición social. La perspectiva de una vida llena de comodidades y \nestatus social seduce a Catherine, quien está entre seguir su corazón \no no.", 6, 150 );


    textAlign( CENTER );
    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "Edgar", 84, 52, 43 );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "Heathcliff", 84, 52, 43 );
      }
    }

    break;
    
  case 3:
  
    image(ilustracion[3], 0, 100);
    
    fill( 255, 150 );
    rect( 0, 0, 600, 310);
    textSize( 19 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "La separación de Catherine y Heathcliff desencadena un torbellino de \nemociones y un anhelo desesperado. Catherine, al pasar el tiempo, elige \ncasarse finalmente con Edgar Linton. Heathcliff, jura venganza contra \naquellos que considera responsables de su sufrimiento. Se convierte en el \npropietario de la finca y comienza su implacable búsqueda de venganza. \nUna de las primeras víctimas es Hindley y aprovechándose de su debilidad, \nla bebida, lo lleva a la ruina económica y a la pérdida de las Cumbres. \n Además, se aprovecha de su desesperación y se adueña de Hareton, \nel hijo de Hindley, criándolo en un ambiente hostil y privándolo \nde una educación adecuada.", 6, 150 );

    break;

  case 4:

    image(ilustracion[4], 0, 0);

    fill( 255, 150 );
    rect( 5, 0, 594, 320);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "Su sed de venganza también se extiende a la familia Linton, \nespecialmente a Edgar y a su hermana Isabella, con quien se casa por \ndespecho. La relación entre Heathcliff e Isabella es tormentosa y llena \n de abusos emocionales. Sin embargo, Isabella queda embarazada y da \na luz a un hijo, Linton Heathcliff. Su llegada representa una nueva \noportunidad para vengarse. Utiliza a Linton como una herramienta, \nmanipulándolo y forzándolo a casarse con Catherine, la hija de Edgar y \nCatherine Earnshaw. Esta unión entre los descendientes de los \nenemigos de Heathcliff simboliza su triunfo final sobre aquellos que lo \nhan lastimado.", 6, 160 );

  
    textAlign( CENTER );
    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "seguir \nvenganza", 84, 52, 43 );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "dejar \nvenganza", 84, 52, 43 );
      }
    }

    break;

  case 5:

    image(ilustracion[5], 0, 0);

    fill( 255, 150 );
    rect( 5, 0, 594, 240);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "La unión de Catherine y Linton está lejos de ser feliz. Linton está \nenfermo y débil, y su matrimonio se basa en el miedo y la \nmanipulación ejercida por Heathcliff. Catherine, a pesar de sufrir en \nsilencio, encuentra consuelo y amistad en Hareton Earnshaw, el hijo \nde Hindley. Juntos, Catherine y Hareton encuentran la fuerza para \nresistir la influencia de Heathcliff y forjar un amor genuino y \nverdadero.", 20, 110 );

    break;

  case 6:

    image(ilustracion[6], 0, 0);

    fill( 255, 150 );
    rect( 5, 65, 594, 285);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "El destino de Heathcliff llega a su fin cuando, en medio de \nsufrimientos físicos y emocionales, Catherine muere y él es \natormentado por sus fantasmas. Heathcliff se muestra abatido y \nconsumido por la culpa y el remordimiento. En sus últimos \nmomentos de vida, parece encontrar redención y paz al reunirse con \nCatherine en la muerte. La finca de Cumbres Borrascosas queda en \nruinas, reflejando el desenlace trágico y la devastación causada por la \nbúsqueda de venganza de Heathcliff.", 20, 200 );

    textAlign( CENTER );

     miBoton( 300, 420, 100, "Volver al \ninicio", 84, 52, 43 );


    break;

  case 7:

    image(ilustracion[7], 0, 0);
    
    fill( 255, 150 );
    rect( 5, 0, 594, 285);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "En lugar de ceder a las presiones sociales y casarse con Edgar, \nCatherine decide seguir su corazón y elige a Heathcliff como su \ncompañero. Juntos, desafían las convenciones y enfrentan \nla oposición de la sociedad. Catherine y Heathcliff deciden \nabandonar Cumbres Borrascosas y buscar una vida juntos. Se \nembarcan en una aventura llena de pasión y conexión profunda, \nexplorando nuevos horizontes y descubriendo \nsu propio camino en el mundo.", 20, 130 );


    break;

  case 8:

    image(ilustracion[8], 0, 0);
   
    fill( 255, 150 );
    rect( 5, 0, 594, 330);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "A medida que los años pasan, Catherine y Heathcliff construyen una \nvida plena y satisfactoria. Superan los obstáculos \nque se les presentan y se apoyan mutuamente en cada desafío. \nJuntos, establecen una familia y se convierten en pilares de su \ncomunidad, ayudando a otros en situaciones similares a las \nque ellos enfrentaron. Sin embargo, a medida \nque comienza a transcurrir el tiempo, las discusiones \ny desacuerdo en la pareja se hacen presentes; Catherine comienza a \ndudar si realmente ama a Heathcliff como para \nseguir construyendo un futuro juntos.", 20, 160 );

    textAlign( CENTER );

    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "Dejar a \nHeathcliff", 84, 52, 43 );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "Seguir con \nHeathcliff", 84, 52, 43 );
      }
    }

    break;

  case 9:

    image(ilustracion[9], 0, 0); 
    
    fill( 255, 150 );
    rect( 5, 0, 594, 300);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "Finalmente, Catherine decide seguir apostando por su relación y \njuntos solucionan sus problemas. Con el tiempo, la \nfinca de Cumbres Borrascosas se transforma en \nun lugar de amor y armonía, en lugar de caer en \nla ruina. Las pasiones desenfrenadas y los oscuros secretos se \ndesvanecen, reemplazados por la compasión y la aceptación. \nCatherine y Heathcliff se convierten en ejemplos de \nsuperación y amor verdadero, inspirando a otros \na seguir sus propios corazones", 20, 140 );

    break;

  case 10:

    image(ilustracion[10], 0, 0);

    fill( 255, 150 );
    rect( 5, 0, 471, 225);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "Catherine y Heathcliff encuentran la plenitud y la \nsatisfacción en su relación, transformando sus vidas \ny las vidas de aquellos que les rodean. Su \nhistoria es un recordatorio de que el amor \nauténtico y el coraje de desafiar las \nnormas pueden llevar a un final feliz \ny significativo.", 20, 110 );

    textAlign( CENTER );
    miBoton( 300, 420, 100, "Volver al \ninicio", 84, 52, 43 );

    break;

  case 11:

    image(ilustracion[11], 0, 0);

    fill( 255, 150 );
    rect( 16, 20, 570, 174);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "En un giro inesperado, Heathcliff, en lugar de buscar venganza, \ndecide dejar atrás su sed de retribución y buscar la redención y el \nperdón. En lugar de atormentar a la familia Linton, se acerca a ellos \ncon humildad y arrepentimiento, reconociendo los errores de su \npasado y buscando enmendarlos.", 20, 100 );

    break;

  case 12:

    image(ilustracion[12], 0, 0);

    fill( 255, 150 );
    rect( 11, 34, 584, 160);
    textSize( 20 );
    textAlign( LEFT, CENTER );
    fill( 0 );
    text( "Edgar Linton, sorprendido por este cambio de actitud, acepta la \ndisculpa de Heathcliff con cautela pero con una disposición abierta a \nla reconciliación. Ambos hombres, una vez enemigos, se convierten \nen aliados y trabajan juntos para reparar el daño causado y \nreconciliar a sus familias.", 20, 110 );


    break;

  case 13:

    image(ilustracion[13], 0, 0);
    
    fill( 255, 150 );
    rect( 12, 19, 584, 190);
    textAlign( LEFT, CENTER );
    textSize( 20 );
    fill( 0 );
    text( "En lugar de forzar un matrimonio entre Linton y Catherine, Heathcliff \naboga por el amor verdadero y la libre elección. Catherine, liberada \nde las ataduras del matrimonio forzado, encuentra consuelo en la \namistad de Hareton Earnshaw, quien se ha convertido en un \nhombre noble y comprensivo. Juntos, Catherine y Hareton forjan \nun amor basado en el respeto y el apoyo mutuo.", 20, 110 );


    break;

  case 14:

    image(ilustracion[14], 0, 0);
    
    fill( 255, 150 );
    rect( 18, 11, 594, 194);    
    textAlign( LEFT, CENTER );
    textSize( 20 );
    fill( 0 );
    text( "La finca de Cumbres Borrascosas se convierte en un lugar de sanación \ny reconciliación. Los personajes que alguna vez estuvieron envueltos \nen un ciclo destructivo de venganza encuentran la redención y la paz \ninterior. Las generaciones futuras, representadas por Catherine y \nHareton, aprenden de los errores del pasado y forjan un futuro \nbasado en el amor y la compasión.", 20, 110 );

    break;

  case 15:

    image(ilustracion[15], 0, 0);
    
    fill( 255, 150 );
    rect( 18, 11, 594, 194);
    textAlign( LEFT, CENTER );
    textSize( 20 );
    fill( 0 );
    text( "A medida que los años pasan, la finca próspera y se convierte en un \nsímbolo de renacimiento y superación. La historia de Catherine y \nHeathcliff se convierte en una leyenda de redención y perdón, \ntransmitida de generación en generación como un recordatorio de \nque el amor y la compasión pueden transformar incluso las \nsituaciones más sombrías.", 20, 110 );
    textAlign( CENTER );
    miBoton( 300, 420, 100, "Volver al \ninicio", 84, 52, 43 );

    break;
    
 case 16:

    image(ilustracion[16], 0, 0);

    textAlign( LEFT, CENTER );
    textSize( 20 );
    fill( 0 );
    text( "Cumbres Borrascosas de Emily Bronte. \nMateria: Tecnología Multimedial 1. \nAlumna: Alexia Anduaga. \nLegajo: 94020/9. \nComisión: 2.", 20, 110 );

    textAlign( CENTER );
    miBoton( 300, 420, 100, "Inicio", 84, 52, 43 );

    break;
  }
}
