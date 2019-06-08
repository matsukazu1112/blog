class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.string :post
      t.string :text
      t.references :post, index: true

      t.timestamps
    end
  end
end
