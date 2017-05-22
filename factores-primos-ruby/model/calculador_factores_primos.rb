class CalculadorFactoresPrimos

  def calcularFactoresPrimos (numeroRecibido)
    resultado = []
    
    #este chequeo de errores no me cierra mucho
    if(numeroRecibido==1)
      resultado.push(1)
      return resultado
    elsif(numeroRecibido<=0)
      return nil
    end
    
    while numeroRecibido != 1
      
      respuesta = obtenerMenorFactorPrimo(numeroRecibido)
      resultado.push(respuesta)
      numeroRecibido = numeroRecibido/respuesta
    end
    
    resultado
  end
  
  private
  def obtenerMenorFactorPrimo(numero)
  
    respuesta = 2
    
    while (numero%respuesta) != 0
      respuesta = respuesta+1
    end
    
    respuesta
  end

end
