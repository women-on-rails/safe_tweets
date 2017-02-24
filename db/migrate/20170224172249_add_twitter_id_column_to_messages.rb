class AddTwitterIdColumnToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :twitter_id, :bigint
    add_column :messages, :author_id, :bigint
  end
end
