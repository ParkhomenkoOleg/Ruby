class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :name

      t.timestamps
      t.references :book, null:false, foreign_key:true
    end
  end
end
