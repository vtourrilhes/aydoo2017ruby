require 'rspec' 
require_relative '../model/formateador_factores_primos'

describe 'FormateadorFactoresPrimos' do

  let(:formateador) { FormateadorFactoresPrimos.new }  
   
  it 'El formateador al recibir [2,2,2,3,3,5] en el metodo agregarComasYHacerString deberia devolver "2,2,2,3,3,5"' do
    expect(formateador.agregarComasYHacerString([2,2,2,3,3,5])).to eq "2,2,2,3,3,5"
  end
  
end
