class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries, :id => false do |t|
      t.integer :id
      t.string :address
      t.references :book, :card_reader, null:false, foreign_key:true
      t.timestamps
    end
  end
end
