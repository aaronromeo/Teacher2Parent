class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :comment
      t.string :criteria
      t.string :gender

      t.timestamps
    end
  end
end
