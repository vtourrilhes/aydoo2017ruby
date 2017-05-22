require 'rspec' 
require_relative '../model/calculador_factores_primos'

describe 'Chopper' do

  let(:calculador) { CalculadorFactoresPrimos.new }  
   
  it 'calculador deberia devolver Calculo factores primos' do
    expect(calculador.calcularFactoresPrimos).to eq "Calculo factores primos"
  end

end
