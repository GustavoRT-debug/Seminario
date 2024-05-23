class Calculator
    def initialize
      @running = true
    end
  
    def start
      puts "Bem-vindo à Calculadora em Ruby!"
      while @running
        puts "Escolha uma operação: +, -, *, / ou digite 'sair' para terminar"
        operation = gets.chomp
  
        break if operation.downcase == 'sair'
  
        if %w[+ - * /].include?(operation)
          puts "Digite o primeiro número:"
          num1 = gets.chomp.to_f
  
          puts "Digite o segundo número:"
          num2 = gets.chomp.to_f
  
          result = calculate(num1, num2, operation)
          puts "O resultado de #{num1} #{operation} #{num2} é: #{result}"
        else
          puts "Operação inválida. Por favor, tente novamente."
        end
      end
      puts "Calculadora finalizada."
    end
  
    private
  
    def calculate(num1, num2, operation)
      case operation
      when '+'
        num1 + num2
      when '-'
        num1 - num2
      when '*'
        num1 * num2
      when '/'
        if num2 != 0
          num1 / num2
        else
          "Erro: Divisão por zero!"
        end
      else
        "Operação inválida."
      end
    end
  end
  
  # Cria uma nova instância da calculadora e inicia
  calculator = Calculator.new
  calculator.start
  