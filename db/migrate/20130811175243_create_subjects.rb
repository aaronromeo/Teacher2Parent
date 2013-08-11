class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :grade
      t.references :student, index: true
      t.references :feedback, index: true

      t.timestamps
    end
  end
end
