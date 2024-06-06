require 'simplecov'
SimpleCov.start do
  coverage_dir 'coverage'  # Configura a saída do relatório HTML para a pasta `coverage`
end
# Carregue e execute os testes aqui
require_relative 'teste2.rb'
require_relative 'teste3_mock.rb'
