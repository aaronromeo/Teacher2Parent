class CreateAdhocMessagesFeedbacks < ActiveRecord::Migration
  def change
    create_table :adhoc_messages_feedbacks, :id => false do |t|
      t.integer :adhoc_message_id, :null => false
      t.integer :feedback_id, :null => false
    end
    add_index(:adhoc_messages_feedbacks, [:adhoc_message_id, :feedback_id], :unique => true, :name => 'ad_m_f_index')
  end
end
