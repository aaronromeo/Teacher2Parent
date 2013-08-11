class AddFeedbackIdToTranslation < ActiveRecord::Migration
  def change
    add_column :translations, :feedback_id, :integer
  end
end
