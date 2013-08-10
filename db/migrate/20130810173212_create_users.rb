class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      #t.string :email
      t.references :language
      t.string :gender
      t.string :role

      t.timestamps
    end
  end
end
