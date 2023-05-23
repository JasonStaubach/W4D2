class Employee
    attr_reader :salary, :name, :title, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end

class Manager < Employee
    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bosses(employee)
        unless employees.include?(employee)
            @employees << employee
        end

    def bonus(multiplier)
        sum_salaries = 0
        @employees.each {|employee| sum_salaries += employee.salary}
        sum_salaries * multiplier
    end
end

p ned = Manager.new("Ned", "Founder", 1000000, nil)
p darren = Manager.new("Darren", "TA manager", 78000, "Ned")
p david = Employee.new("David","TA", 10000, "Darren")
p david.bonus(3)