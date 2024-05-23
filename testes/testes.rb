require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
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

  def test_division_by_zero
    assert_equal "Erro: Divisão por zero!", @calculator.calculate(6, 0, '/')
  end

  def test_invalid_operation
    assert_equal "Operação inválida.", @calculator.calculate(2, 3, '%')
  end
end
