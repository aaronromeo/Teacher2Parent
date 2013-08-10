class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.string :name
      t.integer :teacher_id

      t.timestamps
    end
  end
end
