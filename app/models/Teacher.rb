class Teacher < ActiveRecord::Base
    has_many :assignments
    has_many :students, through: :assignments

    # class methods
        # who has the most students?
        # who has the least grading to do?
        # who has the highest performing students?

    # instance methods
        # how many assignments do they have left to grade?
        # give student an assignment
        # grade a student's assignment
    
end