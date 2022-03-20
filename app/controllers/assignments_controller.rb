class AssignmentsController < ApplicationController
    
    get "/assignments" do
      Assignment.all.to_json(include: [student: {except: [:created_at]}], except: [:created_at])
    end
  
    post "/assignments/" do
      assignment = Assignment.create(
        assignment_name: params[:assignment_name],
        teacher: params[:teacher],
        student: params[:student]
      )
    end
  
    patch "assignments/:id" do
      assignment = Assignment.find(params[:id])
      assignment.update(
        completed: params[:completed],
        grade: params[:grade]
      )
    end
  
  end
  