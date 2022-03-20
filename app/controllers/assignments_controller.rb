class AssignmentsController < ApplicationController
    
    get "/assignments" do
      assignments = Assignment.group(:name)
      assignments.map { |assignment| assignment.name }.to_json
    end
  
    get "assignments/:id" do
      Assignment.find(params[:id]).to_json
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
  