class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.text :summary
      t.integer :author_id

      t.timestamps
    end
  end
end
