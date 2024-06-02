require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/mock'
require_relative '../calculadora'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_addition
    assert_equal 5, @calculator.calculate(2, 3, '+')
  end

  def test_subtraction
    assert_equal 1, @calculator.calculate(3, 2, '-')
  end

  def test_multiplication
    assert_equal 6, @calculator.calculate(2, 3, '*')
  end

  def test_division
    assert_equal 2, @calculator.calculate(6, 3, '/')
  end

  def test_square_root
    assert_equal 3, @calculator.calculate(9, nil, 'raiz')
  end

  def test_modulo
    assert_equal 1, @calculator.calculate(10, 3, '%')
  end

  def test_power
    assert_equal 8, @calculator.calculate(2, 3, '**')
  end

  def test_factorial
    # Usando Mock para simular o resultado do método `factorial`
    factorial_mock = Minitest::Mock.new
    factorial_mock.expect(:call, 120, [5])

    # Substitui o método `factorial` pelo mock dentro do objeto `@calculator`
    @calculator.stub(:factorial, factorial_mock) do
      assert_equal 120, @calculator.calculate(5, nil, '!')
    end

    # Verifica se o método `factorial` foi chamado corretamente
    factorial_mock.verify
  end

  def test_pi_constant
    assert_in_delta Math::PI, @calculator.calculate(nil, nil, 'pi'), 0.001
  end

  def test_e_constant
    assert_in_delta Math::E, @calculator.calculate(nil, nil, 'e'), 0.001
  end

  def test_division_by_zero
    assert_equal "Erro: Divisão por zero!", @calculator.calculate(6, 0, '/')
  end

  def test_invalid_operation
    assert_equal "Operação inválida.", @calculator.calculate(2, 3, '=')
  end
end

