class Teacher < ActiveRecord::Base
    has_many :assignments
    has_many :students, through: :assignments

    # class methods
        # who has the most students?
    def most_students
        self.all.max_by { |teacher| teacher.students.length }
    end

    # instance methods
        # give student an assignment
    def assign_assignment(name, student)
        Assignment.create(
            name: name,
            teacher: self,
            student: student
            )
    end

        # grade a student's assignment
    def grade_assignment(assignment, grade)
        assignment.update(grade: grade)
    end
    
end