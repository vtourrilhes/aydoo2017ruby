class CalculadorFactoresPrimos

  def calcularFactoresPrimos (numeroRecibido)
    resultado = []
    
    while numeroRecibido != 1
      
      respuesta = obtenerMenorFactorPrimo(numeroRecibido)
      resultado.push(respuesta)
      numeroRecibido = numeroRecibido/respuesta
    end
    
    resultado
  end
  
  def obtenerMenorFactorPrimo(numero)
  
    respuesta = 2
    
    while (numero%respuesta) != 0
      respuesta = respuesta+1
    end
    
    respuesta
  end

end
