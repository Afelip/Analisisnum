# Propagación de Error
velocidad  =  4
errorVelocidad  =  0.1
tiempo  =  5
errorTiempo  =  0.1
respuesta  =  velocidad * tiempo
longitud=4
velocidadInferior  =  velocidad - errorVelocidad
tiempoInferior  =  tiempo  -  errorTiempo

vectorVelocidad  =  0
vectorTiempo  =  0
vectorDistancia  =  0
vectorERelativo  =  0
vectorEAbsoluto  =  0
iCounter  =  1

while ( velocidadInferior  < =  velocidad  +  errorVelocidad )
{
  distancia  = round ( velocidadInferior * tiempoInferior , 2 )
  errorAbsoluto  = round (abs ( distancia - respuesta ), 2 )
  errorRelativo  = round ( errorAbsoluto / respuesta * 100 , 2 )
  
  vectorVelocidad [ iCounter ] =  velocidadInferior
  vectorTiempo [ iCounter ] =  tiempoInferior
  vectorDistancia [ iCounter ] =  distancia
  vectorEAbsoluto [ iCounter ] =  errorAbsoluto
  vectorERelativo [ iCounter ] =  errorRelativo
  
  iCounter = iCounter + 1
  
  tiempoInferior  =  tiempoInferior  +  errorTiempo
  
  if ( tiempoInferior  >  tiempo + errorTiempo )
  {
    tiempoInferior  =  tiempo - errorTiempo
    velocidadInferior  =  velocidadInferior  +  errorVelocidad
  }
}

resultados  =  matrix (c ( vectorVelocidad , vectorTiempo , vectorDistancia , vectorEAbsoluto , vectorERelativo )
                       , ncol = 5 , nrow  = length ( vectorEAbsoluto ), byrow  =  FALSE
                       , dimnames  =  list (seq ( 1 , iCounter - 1 , 1 ), c ( " Velocidad " , " Tiempo " , " Distancia " , " E.Absoluto " , " E.Relativo " )))

print (resultados)

