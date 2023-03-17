class Context
  def initialize(strategy)
    @strategy = strategy
  end

  def execute_strategy(data)
    @strategy.execute(data)
  end
end

class StrategyA
  def execute(data)
    puts "Executing strategy A with data #{data}"
  end
end

class StrategyB
  def execute(data)
    puts "Executing strategy B with data #{data}"
  end
end

# Використання паттерна "стратегія"
context = Context.new(StrategyA.new)
context.execute_strategy("some data") # виконується алгоритм стратегії A з даними "some data"

context = Context.new(StrategyB.new)
context.execute_strategy("other data") # виконується алгоритм стратегії B з даними "other data"# frozen_string_literal: true

