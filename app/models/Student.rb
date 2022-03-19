class Student < ActiveRecord::Base
    has_many :assignments
    has_many :teachers, through: :assignments

    # class methods
        # who has the most assignments?
    def self.most_assignments
        self.all.max_by { |student| student.assignments.length }
    end
        # who has completed all of their assignments?

    # instance method
        # how much homework do they have tonight?
    def homework
    end
        # what is their lowest grade, not including incompleted assignments?
    def lowest_grade
    end
        # start an assignment
    def start_new_assignment(name, points_possible, teacher)
        Assignment.create(name: name, points_possible: points_possible, teacher: teacher, student: self)
    end
        # complete an assignment
    def complete_assignment(assignment)
        assignment.update(completed: true)
    end
    
end