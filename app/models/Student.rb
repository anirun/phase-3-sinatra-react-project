class Student < ActiveRecord::Base
    has_many :assignments, dependent: :destroy

    validates :name, presence: true

    # class methods
        # who has the most assignments?
    def self.most_assignments
        self.all.max_by { |student| student.assignments.length }
    end

    # instance method
        # complete an assignment
    def complete_assignment(assignment)
        assignment.student_id == self.id ? assignment.update(completed: true) : "Stop cheating!"
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

        # student's overall grade?
    def overall_grade
        percentage = (self.assignments.average(:grade)/100 * 4).to_f
        grading_system(percentage)
    end
    
end