class StudentsController < ApplicationController

    get "/students" do
        Student.all.to_json(include: [assignments: {except: [:created_at, :student_id]}], except: [:created_at])
    end

    get "/students/:id" do
        student = Student.find_by_id(params[:id])
        student.to_json
    end

    get "/students/:id/assignments" do
        student = Student.find_by_id(params[:id])
        student.assignments.to_json
    end

    post "/students" do
        @student = Student.create(params)
        if @student.id
            @student.to_json
        else
            @student.errors.full_messages.to_sentence
        end
    end

    delete "/students/:id" do
        student = Student.find(params[:id])
        student.destroy
        student.to_json
    end

end