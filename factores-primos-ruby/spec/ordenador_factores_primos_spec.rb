require 'rspec' 
require_relative '../model/ordenador_factores_primos'

describe 'OrdenadorFactoresPrimos' do

  let(:ordenador) { OrdenadorFactoresPrimos.new }  
   
  it 'El ordenador al recibir [2,2,2,3,3,5] en el metodo invertir deberia devolver [5,3,3,2,2,2]' do
    expect(ordenador.invertir([2,2,2,3,3,5])).to eq [5,3,3,2,2,2]
  end
  
end
