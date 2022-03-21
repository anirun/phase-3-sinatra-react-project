class AssignmentsController < ApplicationController
    
    get "/assignments" do
      assignments = Assignment.group(:name).order(created_at: :desc)
      assignments.map { |assignment| assignment.name }.to_json
    end
  
    get "assignments/:id" do
      Assignment.find(params[:id]).to_json
    end

    post "/assignments" do
      Student.all.map { |student| student.assignments.create(params) }
      assignments = Assignment.group(:name).order(created_at: :desc)
      assignments.first.name.to_json
    end
  
    patch "assignments/:id" do
      assignment = Assignment.find(params[:id])
      assignment.update(
        completed: params[:completed],
        grade: params[:grade]
      )
    end
  
  end
  