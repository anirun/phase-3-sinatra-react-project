class Assignment < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher

    # class methods:
        # all missing assignments
        # all completed assignments
        # all failed assignments
        # all students with failed assignments

    # instance methods:
        # enter grade for assignments
        # declare an assignment completed
        # calculate grade percentage


end