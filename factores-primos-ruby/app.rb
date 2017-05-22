  require 'sinatra'
  require_relative './model/calculador_factores_primos'  
  require_relative './model/formateador_factores_primos'
  require_relative './model/ordenador_factores_primos'

  get '/primos' do
    
    respuesta = "400"
    
    numero_obtenido = params[:x]
    
    if !es_numerico?(numero_obtenido)
      return respuesta
    end
    
    calculador = CalculadorFactoresPrimos.new
    formateador = FormateadorFactoresPrimos.new
    o = OrdenadorFactoresPrimos.new
    
    arrayFactoresPrimos = calculador.calcularFactoresPrimos(numero_obtenido)
    arrayFactoresPrimos = o.invertir(arrayFactoresPrimos)
    
    respuesta = formateador.agregarComasYHacerString(arrayFactoresPrimos)
    
    respuesta
    
  end

  post '/primos' do
  
    respuesta = "400"
  
    numero_obtenido = "#{params['x']}"
    
    if !es_numerico?(numero_obtenido)
      return respuesta
    end
    
    calculador = CalculadorFactoresPrimos.new
    formateador = FormateadorFactoresPrimos.new
        
    arrayFactoresPrimos = calculador.calcularFactoresPrimos(numero_obtenido)
    
    respuesta = formateador.agregarComasYHacerString(arrayFactoresPrimos)
    
    respuesta
    
  end
  
  private 
  def es_numerico?(string)
  
    true if Integer(string) rescue false
  
  end
