class AssignmentsController < ApplicationController
    
    get "/assignments" do
      Assignment.all.to_json
    end

    get "/assignments/all" do
      Assignment.group(:name).order(created_at: :desc).to_json
    end
  
    get "/assignments/:id" do
      Assignment.find(params[:id]).to_json
    end

    # get "/assignments/:name" do
    #   Assignment.where(name: params[:name]).to_json
    # end

    post "/assignments" do
      Student.all.map { |student| student.assignments.create(params) }
      assignments = Assignment.group(:name).order(created_at: :desc)
      assignments.first.name.to_json
    end
  
    patch "/assignments/:id" do
      @assignment = Assignment.find_by_id(params["id"])
      if @assignment && @assignment.update(params)
        @assignment.to_json(include: :student)
      else
        {errors: @assignment.errors.full_messages.to_sentence}.to_json
      end
    end

  end
  