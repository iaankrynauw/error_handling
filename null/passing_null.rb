module  PlusMachine
  def self.plus(value, value2)
    value + value2
  end
end

#Expected Values:
p PlusMachine.plus(1, 2)

# #Send nil
begin
  p PlusMachine.plus(1, nil)
rescue => e
  p "Everything broke!"
end

# #Why? would we do this?
class Number
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

number = Number.new(1)
number2 = Number.new(nil)

# #It's unexpected
begin
  p PlusMachine.plus(number.value, number2.value)
rescue => e
  p "Everything broke!"
end

#How to fix it?
# 1. throw an exception
# 2. assume/assert no one will send null
