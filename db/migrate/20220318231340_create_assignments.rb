class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :description
      t.boolean :completed, default: false
      t.integer :points_possible
      t.integer :points_scored, default: 0
      t.integer :percent_grade
      t.integer :teacher_id
      t.integer :student_id
    end
  end
end
