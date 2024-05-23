require 'json'

coverage_file = 'coverage/.last_run.json'
coverage_data = JSON.parse(File.read(coverage_file))

covered_percent = coverage_data['result']['covered_percent']
puts "Cobertura de Testes: #{covered_percent.round(2)}%"
