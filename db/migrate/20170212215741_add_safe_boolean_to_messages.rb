class AddSafeBooleanToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :safe, :boolean, default: true
  end
end
