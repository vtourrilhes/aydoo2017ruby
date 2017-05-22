require 'rspec' 
require_relative '../model/calculador_factores_primos'

describe 'CalculadorFactoresPrimos' do

  let(:calculador) { CalculadorFactoresPrimos.new }  
   
  it 'El calculador al recibir 360 deberia devolver [2,2,2,3,3,5]' do
    expect(calculador.calcularFactoresPrimos(360)).to eq [2,2,2,3,3,5]
  end

  it 'El calculador al recibir 1 deberia devolver [1]' do
    expect(calculador.calcularFactoresPrimos(1)).to eq [1]
  end
  
  it 'El calculador al recibir un cero deberia devolver nil' do
    expect(calculador.calcularFactoresPrimos(0)).to eq nil
  end
  
  
  it 'El calculador al recibir un numero negativo deberia devolver nil' do
    expect(calculador.calcularFactoresPrimos(-323)).to eq nil
  end
  
end
