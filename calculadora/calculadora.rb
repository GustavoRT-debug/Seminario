class Calculator
  def calculate(a, b, operation)
    case operation
    when '+'
      a + b
    when '-'
      a - b
    when '*'
      a * b
    when '/'
      return "Erro: Divisão por zero!" if b == 0
      a / b
    else
      "Operação inválida."
    end
  end

  def self.start
    puts "Bem-vindo à Calculadora em Ruby!"
    loop do
      puts "Escolha uma operação: +, -, *, / ou digite 'sair' para terminar"
      operation = gets.chomp

      break if operation == 'sair'

      puts "Digite o primeiro número:"
      a = gets.chomp.to_i

      puts "Digite o segundo número:"
      b = gets.chomp.to_i

      result = Calculator.new.calculate(a, b, operation)
      puts "Resultado: #{result}"
    end
  end
end

# Descomente a linha abaixo para executar o programa normalmente
Calculator.start if __FILE__ == $0
