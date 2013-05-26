class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.date :delivery
      t.date :collection
      t.text :description
      t.string :firstname
      t.string :lastname
      t.text :address
      t.integer :phone

      t.timestamps
    end
  end
end
