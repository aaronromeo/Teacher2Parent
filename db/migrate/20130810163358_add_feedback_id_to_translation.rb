class AddFeedbackIdToTranslation < ActiveRecord::Migration
  def change
    add_column :translations, :feedback_id, :string
  end
end
