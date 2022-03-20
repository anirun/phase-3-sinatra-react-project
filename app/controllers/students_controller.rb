class StudentsController < ApplicationController
    set :default_content_type, 'application/json'

    get "/students" do
        Student.all.to_json(include: [assignments: {except: [:created_at]}], except: [:created_at])
    end

    get "/students/:id" do
        student = Student.find(params[:id])
        student.to_json
    end

    patch "/students/:id" do
        student = Student.find(params[:id])
        student.update(
            name: params[:name],
            grade: params[:grade]
        )
        student.to_json
    end

    delete "students/:id" do
        student = Student.find(params[:id])
        student.destroy
        student.to_json
    end

end