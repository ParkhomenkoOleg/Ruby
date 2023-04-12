class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :data_release
      t.references :library, null:false, foreign_key:true

      t.timestamps
    end
  end
end
