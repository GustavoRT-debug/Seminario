class Calculator
  def calculate(a, b, operation)
    # Vê qual foi a operação matemática especificada
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
    when 'raiz'
      Math.sqrt(a)
    when '%'
      a % b
    when '**'
      a ** b
    when '!'
      factorial(a)    
    # Se a operação não for válida, retorna uma mensagem de erro  
    else
      "Operação inválida."
    end
  end
  
  #Função para o calculo do fatorial
  def factorial(n)
    if n == 0
      1
    else
      (1..n).inject(:*)
    end
  end

  def self.start
    puts "Bem-vindo à Calculadora em Ruby!"

    #Inicia um looping até o usuário escolher sair sair
    loop do
      puts "Escolha uma operação: +, -, *, /, raiz, %, **, ! ou digite 'sair' para terminar"
      operation = gets.chomp

      break if operation == 'sair'

      puts "Digite o primeiro número:"
      a = gets.chomp.to_i

      # se a operação for raiz ou fatorial apenas o "a" é necessário
      if operation != 'raiz' && operation != '!'
        puts "Digite o segundo número:"
        b = gets.chomp.to_i
      else
        b = nil
      end
      
    # Chama o método calculate para realizar a operação
      result = Calculator.new.calculate(a, b, operation)
      puts "Resultado: #{result}"
    end
  end
end

# Descomente a linha abaixo para executar o programa normalmente
Calculator.start if __FILE__ == $0
