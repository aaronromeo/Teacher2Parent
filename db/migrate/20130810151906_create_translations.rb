class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.references :language, index: true
      t.text :comment

      t.timestamps
    end
  end
end
