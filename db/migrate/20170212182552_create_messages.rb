class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :author
      t.string :author_slug
      t.text :content

      t.timestamps
    end
  end
end
