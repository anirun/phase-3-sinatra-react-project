class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.boolean :completed, default: false
      t.integer :grade
      t.integer :teacher_id
      t.integer :student_id
      t.datetime :created_at
    end
  end
end
