class AddKindToMessages < ActiveRecord::Migration[5.0]
  def change
      add_column :messages, :kind, :string
  end
end
