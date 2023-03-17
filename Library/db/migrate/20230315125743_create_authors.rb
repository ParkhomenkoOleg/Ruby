class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :surname
      t.string :lastname
      t.string :date_of_birth
      t.references :book, null:false, foreign_key:true
      t.timestamps
    end
  end
end
