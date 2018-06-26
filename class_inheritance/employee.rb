require_relative "manager"

class Employee

  attr_reader :salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    # self.boss=(boss)
    self.boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end

  def boss=(boss)
    @boss = boss
    boss.employees.push(self) unless boss.nil?
    nil
  end

  private


end
