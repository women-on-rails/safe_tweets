class RemoveSafeFromMessages < ActiveRecord::Migration[5.0]
  def change
      remove_column :messages, :safe
  end
end
