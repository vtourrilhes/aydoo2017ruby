class FormateadorFactoresPrimos

  def agregarComasYHacerString(array)
  
    respuesta = ""
  
    array.each do |numero|
      respuesta << numero.to_s+","
    end
    
    respuesta = respuesta[0...respuesta.length-1]
  end

end
