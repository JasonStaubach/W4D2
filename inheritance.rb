class Employee
    attr_reader :salary, :name, :title, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        if @boss != nil
            @boss.employs(self)
        end
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss = nil, employees = [])
        super(name, title, salary, boss)
        @employees = employees
    end

    def employs(employee)
        unless employees.include?(employee)
            @employees << employee
        end
    end

    def bonus(multiplier)
        sum_salaries = 0
        @employees.each {|employee| sum_salaries += employee.salary}
        sum_salaries * multiplier
    end
end

p darren = Manager.new("Darren", "TA manager", 78000)
p david = Employee.new("David","TA", 10000, darren)
p shawna = Employee.new("Shawna", "TA", 12000, darren)
# p ned = Manager.new("Ned", "Founder", 1000000, nil, [darren, shawna])
# darren.employs(david)
p darren
p david.bonus(3)
p darren.bonus(4)