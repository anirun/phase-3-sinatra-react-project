class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/assignments" do
    assignments = Assignment.all.order(created_at: :asc)
    assignments.to_json
  end

  post "/assignments/" do
    assignment = Assignment.create(
      name: params[:name],
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

  get "/students" do
    students = Assignment.joins(:student)
    students.to_json
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
