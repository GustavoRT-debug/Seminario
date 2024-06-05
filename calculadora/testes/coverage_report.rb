# coverage_report.rb

require 'simplecov'
SimpleCov.start

# Carregue e execute os testes aqui
require_relative 'testes.rb'
require_relative 'teste2.rb'
require_relative 'teste3_mock.rb'
