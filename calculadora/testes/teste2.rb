require 'rspec'
require_relative '../calculadora'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe '#calculate' do
    it 'Soma' do
      expect(calculator.calculate(5, 3, '+')).to eq(8)
    end

    it 'Subtração' do
      expect(calculator.calculate(5, 3, '-')).to eq(2)
    end

    it 'Multiplicação' do
      expect(calculator.calculate(5, 3, '*')).to eq(15)
    end

    it 'Divisão' do
      expect(calculator.calculate(6, 3, '/')).to eq(2)
    end

    it 'Retornar erro na divisão por zero' do
      expect(calculator.calculate(5, 0, '/')).to eq('Erro: Divisão por zero!')
    end

    it 'Raiz quadrada' do
      expect(calculator.calculate(9, nil, 'raiz')).to eq(3.0)
    end

    it 'Resto da divisão' do
      expect(calculator.calculate(10, 3, '%')).to eq(1)
    end

    it 'Potência' do
      expect(calculator.calculate(2, 3, '')).to eq(8)
    end

    it 'Retornar o valor de Pi' do
      expect(calculator.calculate(nil, nil, 'pi')).to eq(Math::PI)
    end

    it 'Retornar o valor de e' do
      expect(calculator.calculate(nil, nil, 'e')).to eq(Math::E)
    end

    it 'Fatorial' do
      expect(calculator.calculate(5, nil, '!')).to eq(120)
    end

    it 'Operação invalida' do
      expect(calculator.calculate(5, 3, 'invalid')).to eq('Operação inválida.')
    end
  end
end
