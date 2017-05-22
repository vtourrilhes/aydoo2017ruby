  require 'sinatra'
  require_relative './model/calculador_factores_primos'

  get '/primos' do
    
    c = CalculadorFactoresPrimos.new
    numero_obtenido = params[:x]
    
    arrayFactoresPrimos = c.calcularFactoresPrimos(numero_obtenido)
    
    arrayFactoresPrimos
  end

  post '/primos' do
  
    c = CalculadorFactoresPrimos.new
    o = OrdenadorFactoresPrimos.new
    
    numero_obtenido = "#{params['nombre']}"
        
    arrayFactoresPrimos = c.calcularFactoresPrimos(numero_obtenido)
    o.invertir(arrayFactoresPrimos)
    
    arrayFactoresPrimos
  end
