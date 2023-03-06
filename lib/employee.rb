class Employee
  attr_reader :name, :age, :salary
  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @salary = info[:salary].delete("$").to_i
    
  end

  def give_raise(dollar)
    @salary += dollar
  end
end