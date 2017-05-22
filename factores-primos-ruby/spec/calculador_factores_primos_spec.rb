require 'rspec' 
require_relative '../model/calculador_factores_primos'

describe 'Chopper' do

  let(:calculador) { CalculadorFactoresPrimos.new }  
   
  it 'El calculador al recibir 360 deberia devolver [2,2,2,3,3,5]' do
    expect(calculador.calcularFactoresPrimos(360)).to eq [2,2,2,3,3,5]
  end

end
