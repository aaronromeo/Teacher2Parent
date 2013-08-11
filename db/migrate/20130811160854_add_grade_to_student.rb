class AddGradeToStudent < ActiveRecord::Migration
  def change
    add_column :students, :grade, :string
    add_column :students, :comment, :text
  end
end
