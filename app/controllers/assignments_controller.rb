class AssignmentsController < ApplicationController
    
    get "/assignments" do
      Assignment.group(:name).order(created_at: :desc).to_json
    end
  
    get "/assignments/:id" do
      Assignment.find(params[:id]).to_json
    end

    post "/assignments" do
      Student.all.map { |student| student.assignments.create(params) }
      assignments = Assignment.group(:name).order(created_at: :desc)
      assignments.first.name.to_json
    end
  
    patch "/assignments/:id" do
      assignment = Assignment.find(params[:id])
      assignment.update(
        grade: params[:grade]
      )
    end

  end
  