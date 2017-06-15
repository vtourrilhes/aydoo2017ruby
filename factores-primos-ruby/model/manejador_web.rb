require_relative '../model/calculador_factores_primos'
require_relative '../model/formateador_factores_primos'
require_relative '../model/ordenador_factores_primos'
require_relative '../model/web_response'

class ManejadorWeb

  def get_factores_primos(numero_obtenido)

    webResponse = WebResponse.new("html", 200, "")

    if !es_numerico?(numero_obtenido)
      webResponse.setEstado(400)
      return webResponse
    end

    calculador = CalculadorFactoresPrimos.new
    formateador = FormateadorFactoresPrimos.new
    o = OrdenadorFactoresPrimos.new

    arrayFactoresPrimos = calculador.calcularFactoresPrimos(numero_obtenido)
    arrayFactoresPrimos = o.invertir(arrayFactoresPrimos)

    respuesta = formateador.agregarComasYHacerString(arrayFactoresPrimos)

    webResponse.setRespuesta(respuesta)

    webResponse
  end

  def post_factores_primos(numero_obtenido)

    webResponse = WebResponse.new("html", 200, "")

    if !es_numerico?(numero_obtenido)
      webResponse.setEstado(400)
      return webResponse
    end

    calculador = CalculadorFactoresPrimos.new
    formateador = FormateadorFactoresPrimos.new

    arrayFactoresPrimos = calculador.calcularFactoresPrimos(numero_obtenido)

    respuesta = formateador.agregarComasYHacerString(arrayFactoresPrimos)

    webResponse.setRespuesta(respuesta)
    webResponse

  end


  private
  def es_numerico?(string)

    true if Integer(string) rescue false

  end



end