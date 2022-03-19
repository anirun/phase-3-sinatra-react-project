class Teacher < ActiveRecord::Base
    has_many :assignments
    has_many :students, through: :assignments

    # class methods
        # who has the most students?
        # who has the least grading to do?

    # instance methods
        # how many assignments do they have left to grade?
        def left_to_grade
            self.assignments.where(percent_grade: nil)
        end
        # give student an assignment
        def assign_assignment(name, points_possible, student)
            Assignment.create(
                name: name, 
                points_possible: points_possible, 
                student: student
                )
        end
        # grade a student's assignment
        def grade_assignment(assignment, grade)
            assignment.update(points_scored: grade)
        end
    
end