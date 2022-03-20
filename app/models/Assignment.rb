class Assignment < ActiveRecord::Base
    belongs_to :student

    validates :name, presence: true
    
    # instance methods
        # give student an assignment
        def assign_assignment(name, student)
            self.create(
                name: name,
                student: student
                )
        end
    
            # grade a student's assignment
        def grade_assignment(grade)
            self.update(grade: grade)
        end

end