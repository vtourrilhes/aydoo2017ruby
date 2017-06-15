  require 'sinatra'
  require_relative 'model/manejador_web'

  get '/primos' do
    manejador = ManejadorWeb.new
    webResponse = manejador.get_factores_primos(params[:x])
    status webResponse.getEstado()
    content_type webResponse.getContentType()

    webResponse.getRespuesta()
  end

  post '/primos' do

    numero_obtenido = "#{params['x']}"
    puts numero_obtenido
    puts 'hola'
    manejador = ManejadorWeb.new
    webResponse = manejador.get_factores_primos(numero_obtenido)
    status webResponse.getEstado()
    content_type webResponse.getContentType()

    webResponse.getRespuesta()

  end