require_relative 'coverage_report'

require 'rspec'
require_relative '../calculadora'

RSpec.describe Calculator do
  describe '#calculate' do
    it 'calls Calculator#factorial with the correct argument' do
      calculator = Calculator.new

      # Criando um mock para o método Calculator#factorial
      allow(calculator).to receive(:factorial).and_return(120)

      # Expectativa para verificar se Calculator#factorial é chamado corretamente
      expect(calculator).to receive(:factorial).with(5)

      # Chamando o método calculate
      calculator.calculate(5, nil, '!')
    end
  end
end
