  require 'sinatra'
  require_relative './model/calculador_factores_primos'  
  require_relative './model/formateador_factores_primos'
  require_relative './model/ordenador_factores_primos'

  get '/primos' do
    
    respuesta = 400
    
    numero_obtenido = params[:x]
    
    calculador = CalculadorFactoresPrimos.new
    formateador = FormateadorFactoresPrimos.new
    o = OrdenadorFactoresPrimos.new
    
    arrayFactoresPrimos = calculador.calcularFactoresPrimos(numero_obtenido)
    arrayFactoresPrimos = o.invertir(arrayFactoresPrimos)
    
    respuesta = formateador.agregarComasYHacerString(arrayFactoresPrimos)
    
    respuesta
    
  end

  post '/primos' do
  
    c = CalculadorFactoresPrimos.new
    
    numero_obtenido = "#{params['nombre']}"
        
    arrayFactoresPrimos = c.calcularFactoresPrimos(numero_obtenido)
    
    arrayFactoresPrimos
  end
