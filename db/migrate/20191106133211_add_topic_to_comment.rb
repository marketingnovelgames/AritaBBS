class AddTopicToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :topic, :reference
  end
end
