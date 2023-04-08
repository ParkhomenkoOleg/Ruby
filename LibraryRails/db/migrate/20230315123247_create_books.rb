class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books, :id => false do |t|
      t.integer :id
      t.string :author
      t.string :data_release
      t.references :library, :genre, :author, null:false, foreign_key:true

      t.timestamps
    end
  end
end
