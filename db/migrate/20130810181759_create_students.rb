class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.references :student_class, index: true
      t.string :gender
      t.references :parent, index: true

      t.timestamps
    end
  end
end
