class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :code
      t.string :english_name
      t.string :native_name

      t.timestamps
    end
  end
end
