class CreateCardReaders < ActiveRecord::Migration[7.0]
  def change
    create_table :card_readers do |t|
      t.string :name_library
      t.string :name_book
      t.string :date_taking_book
      t.references :library, :user, null:false, foreign_key:true
      t.timestamps
    end
  end
end
