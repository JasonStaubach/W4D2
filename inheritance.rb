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
        total = self.total_subsalary * multiplier
    end
    protected
    def total_subsalary
        salary = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                salary += employee.total_subsalary + employee.salary
            else
                salary += employee.salary
            end
        end
        salary
    end
end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA manager", 78000, ned)
david = Employee.new("David","TA", 10000, darren)
shawna = Employee.new("Shawna", "TA", 12000, darren)
# darren.employs(david)

p david.bonus(3)
p darren.bonus(4)
p ned.bonus(5)