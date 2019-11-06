class AddTopicsToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :topic, foreign_key: true
  end
end
