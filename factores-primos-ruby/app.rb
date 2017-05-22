  require 'sinatra'
  require_relative './model/calculador_factores_primos'

  get '/primos' do
    
    c = CalculadorFactoresPrimos.new
    numero_obtenido = params[:x]
    
    c.calcularFactoresPrimos numero_obtenido
    
    return numero_obtenido;
  end

  post '/hola' do
    "hola: #{params['nombre']}"
  end
