class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.references :initiated_by, index: true

      t.timestamps
    end
  end
end
