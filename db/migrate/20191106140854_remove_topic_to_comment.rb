class RemoveTopicToComment < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :topic, :reference
  end
end
