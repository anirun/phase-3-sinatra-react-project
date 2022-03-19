class Student < ActiveRecord::Base
    has_many :assignments
    has_many :teachers, through: :assignments

    # class methods
        # who has the most assignments?
    def self.most_assignments
        self.all.max_by { |student| student.assignments.length }
    end

    # instance method
        # start an assignment
    def start_new_assignment(name, points_possible, teacher)
        Assignment.create(
            name: name, 
            points_possible: points_possible, 
            teacher: teacher, 
            student: self
            )
    end
        # complete an assignment
    def complete_assignment(assignment)
        assignment.update(completed: true)
    end
        # student's overall grade??
    def overall_grade
        self.assignments.average(:grade)
    end
    
end