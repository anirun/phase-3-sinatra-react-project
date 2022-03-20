class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :grade
      t.datetime :created_at
    end
  end
end
