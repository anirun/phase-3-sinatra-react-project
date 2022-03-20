class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :grade, default: 0
      t.integer :student_id
      t.datetime :created_at
    end
  end
end
