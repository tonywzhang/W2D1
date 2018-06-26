require_relative "employee"

class Manager < Employee
  attr_accessor :employees

  def initialize(name, title, salary, boss)
    @employees = []
    super
  end

  def bonus(multiplier)
    subordinate_total_salary * multiplier
  end

  # def boss=(boss)
  #   super
  # end

  # private
  def subordinate_total_salary
    total = 0
    @employees.each do |employee|
      total += employee.salary
      if employee.is_a?(Manager)
        total += employee.subordinate_total_salary
      end
    end
    total
  end

  # protected


end

david = Employee.new("David", "TA", 10000, darren)
