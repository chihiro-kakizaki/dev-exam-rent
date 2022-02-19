class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :price
      t.string :address
      t.string :age
      t.text :notes

      t.timestamps
    end
  end
end
