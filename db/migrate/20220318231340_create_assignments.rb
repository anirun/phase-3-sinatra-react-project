class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :description
      t.boolean :completed, default: false
      t.boolean :graded?, default: false
      t.integer :grade, default: 0
      t.integer :teacher_id
      t.integer :student_id
    end
  end
end
