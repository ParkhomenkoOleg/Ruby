class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :lastname
      t.string :date_of_birth
      t.references :card_reader, null:false, foreign_key:true
      t.timestamps
    end
  end
end