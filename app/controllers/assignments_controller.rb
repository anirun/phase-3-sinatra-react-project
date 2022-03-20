class AssignmentsController < ApplicationController
    set :default_content_type, 'application/json'
    
    get "/assignments" do
      assignments = Assignment.all.order(created_at: :asc)
      assignments.to_json
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
  