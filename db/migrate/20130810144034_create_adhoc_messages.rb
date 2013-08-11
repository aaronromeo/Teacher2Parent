class CreateAdhocMessages < ActiveRecord::Migration
  def change
    create_table :adhoc_messages do |t|
      t.boolean :isNew
      t.references :student, index: true
      t.integer :recipient_id, index: true
      t.integer :sender_id, index: true

      t.timestamps
    end
  end
end
