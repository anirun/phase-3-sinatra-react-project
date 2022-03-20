class Student < ActiveRecord::Base
    has_many :assignments
    has_many :teachers, through: :assignments

    # class methods
        # who has the most assignments?
    def self.most_assignments
        self.all.max_by { |student| student.assignments.length }
    end

    # instance method
        # complete an assignment
    def complete_assignment(assignment)
        assignment.update(completed: true)
    end
    
    def grading_system(percentage)
        if percentage < 60
            "F"
        elsif percentage < 70
            "D"
        elsif percentage < 80
            "C"
        elsif percentage < 90
            "B"
        else
            "A"
        end
    end

        # student's overall grade point average?
    def gpa
        (self.assignments.average(:grade)/100 * 4).to_f
    end
        # student's grade in a specific teacher's class?
    def class_grade(teacher)
        percentage = self.assignments.where(teacher: teacher)&.average(:grade).to_i
        grading_system(percentage)
    end
    
end