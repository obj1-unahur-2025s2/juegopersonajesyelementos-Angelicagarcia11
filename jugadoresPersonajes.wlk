import elementos.*
import armas.*  


object luisa {
  var personajeActivo = floki
  method cambiarPersonaje(unPersonaje) {
    personajeActivo = unPersonaje
  }
  method personaje() {
    return personajeActivo
  }
}





object floki {
  var arma = ballesta
  
  method encontrar(elemento){
    if(arma.estaCargada()){
        elemento.recibirAtaque(arma.potencia())
        arma.usar()
    }
  }
  method cambiarArma(unArma){
    arma = unArma
  }
}



  



object mario(){
    var valorRecolectado = 0
    var ultimoElemento = ningunElemento
    method encontrar(elemento){
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
        ultimoElemento = elemento
    }
    method estaFeliz(){
        return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
    }
}